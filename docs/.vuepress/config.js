module.exports = {
  title: 'Hvai\'s blog',
  description: '我的个人网站,暂支持文章发布',
  head: [ // 注入到当前页面的 HTML <head> 中的标签
    ['link', {
      rel: 'icon',
      href: '/logo.jpg'
    }], // 增加一个自定义的 favicon(网页标签的图标)
  ],
  serviceWorker: true, // 是否开启 PWA 
  base: '/', // 这是部署到github相关的配置
  markdown: {
    lineNumbers: true // 代码块显示行号
  },
  themeConfig: {
    nav: [ // 导航栏配置
      {
        text: '前端基础',
        link: '/accumulate/'
      },
      {
        text: '算法题库',
        link: '/algorithm/'
      },
      {
        text: '百度',
        link: 'https://baidu.com'
      }
    ],
    // sidebar: 'auto', // 侧边栏配置
    sidebar: [{
      title: 'Home',
      collapsable: true,
      path:'/'
    }, {
      title: 'MarkDown文档',
      collapsable: true,
      // path:'/MD/',
       children: [{title:'MarkDown使用',path:'./MD/MarkDownDemo',collapsable: false,}]
    }],
    // sidebarDepth: 2, // 侧边栏显示2级
  },
  markdown: {
    // markdown-it-anchor 的选项
    anchor: {
      permalink: true
    },
    // markdown-it-toc 的选项
    toc: {
      includeLevel: [1, 2]
    },
    extendMarkdown: md => {
      // 使用更多的 markdown-it 插件!
      // md.use(require('markdown-it-xxx'))
    }
  }
};