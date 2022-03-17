'''
Helper function for scripts generation.
'''

# %%
from datetime import datetime
from typing import List, Dict
import os


# %%
def multi_thread_script(
    sh_name: str,
    script_name: str,
    log_name: str,
    cmd_args: List[Dict[str, str]],
    nprocess: int = 1,
    exe_name: str = 'python3',
    time_stamp: str = 'date',
    output_dir: str = None
) -> None:
    '''
    Generate a multi-process bash script (.sh) to process a dataset.
    In the generated bash, each entry in the cmd_args list will form a line of command,
    where <exe_name> (python by default) will execute using the optional arguments in
    that entry.

    Parameters
    ---------------
    sh_name: str.
        The name of the bash script to be generated.
    script_name: str.
        The name of the python script to execute.
    log_name: str.
        The base name of the log file. The full name of the log will be
        <log_name>_<time_stamp>.log.
    cmd_args: list of dictionary.
        Each entry is a dictionary designating the parameters to be passed to the
        script. The argument will be passed as "--key --value" for each dictionary
        entry.
    nprocess: int.
        Number of processes for parallel execution. Use 1 or less for single process.
    exe_name: str.
        The program to execute the script.
    time_stamp: str.
        If time_stamp == "date", log files will be stamped by the current date;
        if time_stamp == "now", log files will be stamped by the current time to seconds;
        If time_stamp == None, no postfix will be added to log filename.
        Otherwise, log filename will be postfixes by the <time_stamp> string.
    output_dir: str.
        The destination to copy the log files to when finished. If None, no copy is done.

    Return
    --------------
    None. A file named <sh_name> will be generated.

    Example
    --------------
    cmd_args = [
        {'name': 'p1', 'key': 'k1'},
        {'name': 'p2', 'key': 'k2'},
    ]
    multi_thread_script(
        'test.sh', 'test.py', 'test', cmd_args
    )

    It will generate a test.sh with the following contents

    python3 test.py name p1 key k1
    python3 test.py name p2 key k2

    '''
    if time_stamp == 'date':
        time_stamp = datetime.strftime(datetime.now(), '%Y%m%d')
    elif time_stamp == 'now':
        time_stamp = datetime.strftime(datetime.now(), '%Y%m%d%H%M%S')
    elif time_stamp is not None:
        time_stamp = str(time_stamp)

    if time_stamp is not None:
        log_name = log_name + '_' + time_stamp

    # create directory for log
    log_dir = os.path.dirname(log_name)
    if len(log_dir) > 0:
        os.makedirs(log_dir, exist_ok=True)

    with open(sh_name, 'w') as f:
        f.write('#!/bin/bash\n\n')
        for k, args in enumerate(cmd_args):
            if k % nprocess == 0:
                if k > 0 and nprocess > 1:
                    f.write('wait\n')
                f.write('echo "{k}/{total}"\n'.format(k=k, total=len(cmd_args)))

            # display progress in the log files
            f.write(
                'echo "[Progress] {0}/{1}" >> {2}_{3}.log\n'
                .format(k, len(cmd_args), log_name, k % nprocess)
            )

            arg_str = []
            for name in args:
                if isinstance(args[name], list):
                    for v in args[name]:
                        arg_str.append('{0} "{1}"'.format(name, v))
                else:
                    arg_str.append('{0} "{1}"'.format(name, args[name]))
            arg_str = ' '.join(arg_str)

            log_str = '&>> ' + log_name + '_' + str(k % nprocess) + '.log'
            f.write(' '.join([exe_name, script_name, arg_str, log_str]))
            if nprocess > 1:
                f.write(' &\n')
            else:
                f.write('\n')
        if nprocess > 1:
            f.write('wait\n')

        f.write(
            'cat '
            + ' '.join(['{log}_{k}.log'.format(log=log_name, k=k) for k in range(nprocess)])
            + ' > ' + log_name + '.log\n'
        )
        for k in range(nprocess):
            f.write('rm {log}_{k}.log\n'.format(log=log_name, k=k))

        if output_dir is not None:
            os.makedirs(output_dir, exist_ok=True)
            f.write('cp {0}.log {1}.log\n'.format(log_name, os.path.join(output_dir, os.path.basename(log_name))))
