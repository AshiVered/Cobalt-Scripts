mkdir sigend
java -jar signapk.jar certificate.pem key.pk8 1/dist/1.apk sigend/1-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 2/dist/2.apk sigend/2-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 3/dist/3.apk sigend/3-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 4/dist/4.apk sigend/4-sigen.apk
java -jar signapk.jar certificate.pem key.pk8 5/dist/1.apk sigend/5-sigen.apk
@echo ------------------------------------------
@echo your sigend APKs in sigend folder...
@echo ------------------------------------------