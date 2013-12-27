
from fabric.api import local, settings, abort, run, cd
def hello(name="kaali", key="something"):
	print "hello world!%s__%s"%(name, key)

