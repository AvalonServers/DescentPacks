java -jar wrapper\wrapper.jar %*
IF EXIST wrapper\new.jar MOVE /Y wrapper\new.jar wrapper\wrapper.jar
