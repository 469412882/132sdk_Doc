apk接入sdk步骤：

1、引入sdk的编译文件
   lib: 直接复制so文件
   smali: 将smali文件按照路径复制
   smali_classes2: 如果apk包有次文件，则按照路径复制，如果没有，直接复制到smali文件中
   unknown: sdk中的bgimage.jpg存放在这个文件夹中，还有enhance部分文件
   
2、引入资源文件
	 launchimage.png  ： 1）将此文件放入res/drawable/中
	                     2）在res/values/public.xml中加入资源ID
	                     3）在com/xxx/xxx/R$drawable.smali文件中定义资源常量
	                     
	 MyDialogStyle   ：  1）在res/values/styles.xml中加入此style
	                     2）在res/values/public.xml中加入资源ID
	                     3）在com/xxx/xxx/R$style.smali文件中定义资源常量
	                     
3、修改application
   在app.smali文件中添加对应的代码，修改入口MainActivity，可以通过Manifest中查找
   
4、修改version
	 在apktool.yml文件中修改version，和unknownFiles
	 
5、修改Manifest文件
   1）添加权限配置
   2）添加极光和sdk配置 并去除原有的启动入口
   3）修改包名
   4）修改极光配置key
   5）修改Manifest$permission文件，
   
6、修改BuildConfig文件
   BuildConfig.smali文件中修改包名和VERSION_NAME
   
7、修改app名
   修改Manifest中指定的res/values/strings.xml中app_name的值，最好检索一下
   
8、修改logo
   修改Manifest中指定的res/mipmap/logo.png 注意：如果有多个适配文件，都要修改

   