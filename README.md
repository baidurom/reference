reference
=========

reference提供Smali插桩的参考代码，以及其他配置参考。

    * aosp(Android Open Source Project): 提供Android框架层相关Jar包反编译后的Smali代码。
    * bosp(Baidu Open Source Project)  : 提供Baidu框架层相关Jar包反编译后的Smali代码。
    * autopatch : 提供自动插桩的补丁文件。所有补丁文件都采用XML描述，定义了Baidu在Android代码上的修改。
    * configs : 提供机型Makefile相关的配置参考。

  <b>手工插桩</b>

  开发者可以对比aosp/和bosp/目录(Beyond Compare、Meld或其他文件对比工具)，查看Baidu在Android上的Smali改动记录，可以以此作为Smali插桩的参考。


  <b>自动插桩</b>

  autopatch为开发者提供自动插桩百度改动的功能。
  当使用make bringup, make patchall, make upgrade命令时，将会解析autopatch/目录下的XML补丁文件。
  开发者可以通过阅读XML补丁文件，查看Baidu在Android上的Smali改动记录。
