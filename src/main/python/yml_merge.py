import sys
import glob
import hiyapyco

configs = glob.glob(sys.argv[1])
configs.sort()
conf = hiyapyco.load(configs, method=hiyapyco.METHOD_MERGE)
print(hiyapyco.dump(conf))
