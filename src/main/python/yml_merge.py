import sys
import glob
import hiyapyco

paths = [sorted(glob.glob(path)) for path in sys.argv[1:]]
configs = [conf for sublist in paths for conf in sublist]
conf = hiyapyco.load(configs, method=hiyapyco.METHOD_MERGE, mergelists=False)
print(hiyapyco.dump(conf))
