# INIT
################################################################################

from aqt import mw

from .util import *
from .forvodl import *
from .pitchacc import *


RegisterForvoDownloadModule()

#cb = QApplication.clipboard()
#phrase = cb.text()
#RunForvoDownload(phrase, mw)
