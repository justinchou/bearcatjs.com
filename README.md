# bearcatjs.com

Old site `bearcatjs.org` is no longer about `bearcatjs`, so I fork the project to create `bearcatjs.com` to replace it.

原有网站 `bearcatjs.org` 不知为何原因, 现在提供服务的内容与`bearcatjs`毫无关联, 所以fork此工程建立新站`bearcatjs.com`来暂代.

This site is built with [hexo](http://zespia.tw/hexo/). Site content is written in Markdown format located in `source`. Pull requests welcome!

本站基于 [hexo](http://zespia.tw/hexo/) 编写. 内容使用Markdown编写, 保存于`source`目录下, 欢迎加入提交代码.

Old site packages dependency is managed just by npm `package.json`, and some of the new version hexo user cannot build the project, so I add `yarn` package manager. 

原有网站基于`npm`默认的`package.json`进行包的管理, 以至于有些包依赖问题导致此时已经无法正常编译, 所以我引入了`yarn`进行本工程的包依赖管理.

## Developing

Start a dev server at `localhost:4000`:

测试服务器启动后, 使用浏览器访问 `http://localhost:4000`.

clone - 克隆本工程代码
```
git clone https://github.com/bearcatjs/bearcatjs.org.git --recursive
```

How to install dependency with `npm` - 使用npm安装依赖包
```
$ npm install -g hexo-cli
$ npm install
```

How to install dependency with `yarn` - 使用yarn安装依赖包
```
$ yarn add -G hexo-cli
$ yarn install
```

Generate Html code and start server - 生成网站,启动服务器
```
$ hexo generate
$ cp -rf bearcat-examples public/examples 
$ hexo server
```

## using make to compile - 使用make命令编译工程

1. make         : clean, compile, copy dependency - 清理,编译,复制依赖 (部署正式服务前使用)
2. make generate: clean, generate html, start server - 清理,生成网站,启动网站 (编写/更改文字内容时使用)
3. make update  : update dependency examples - 更新依赖工程
4. make deploy  : make and deploy to server - 编译,部署到服务器

