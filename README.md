# Zxin Note

这是一个基于 [Hugo](https://gohugo.io/) 与 [hugo-book](https://github.com/alex-shpak/hugo-book) 主题构建的个人知识笔记站点，主要用于沉淀技术学习、科研记录与日常随笔内容。

- 线上地址：<https://note.netlify.app/>
- 站点语言：中文（`zh`）
- 主题：`hugo-book`（暗色主题）

## 功能简介

- 文档化知识管理：按「技术 / 学习 / 科研 / 记录」等目录管理内容。
- 自动生成静态网站：通过 Hugo 将 Markdown 内容构建为 `public/` 静态页面。
- 文档导航与搜索：依托 `hugo-book` 主题的侧边导航、目录与站内检索能力。

## 项目结构

```text
.
├── content/            # 站点内容（Markdown）
│   └── docs/           # 主要文档目录
├── static/             # 静态资源（图片等）
├── themes/hugo-book/   # Hugo 主题
├── public/             # Hugo 构建产物（静态页面）
├── archetypes/         # 内容模板
└── hugo.toml           # Hugo 站点配置
```

## 环境要求

- Hugo（建议使用 Extended 版本）
- Git

可通过以下命令检查 Hugo 是否可用：

```bash
hugo version
```

## 本地开发

1. 克隆仓库：

   ```bash
   git clone <your-repo-url>
   cd note
   ```

2. 启动本地预览：

   ```bash
   hugo server -D
   ```

3. 打开浏览器访问：

   <http://localhost:1313>

## 内容编写

新建文档示例：

```bash
hugo new content/docs/技术/新文章.md
```

常见写作位置：

- `content/docs/技术/`：技术笔记
- `content/docs/学习/`：学习记录
- `content/docs/科研/`：科研相关
- `content/docs/记录/`：周报与随笔

## 构建与发布

本地构建静态文件：

```bash
hugo
```

构建后文件默认输出到 `public/` 目录，可直接部署到 Netlify、GitHub Pages 或其他静态托管平台。

## 配置说明

站点核心配置位于 `hugo.toml`：

- `baseURL`：站点访问地址
- `languageCode`：站点语言代码
- `title`：站点标题
- `theme`：使用主题
- `params.BookTheme`：主题配色（当前为 `dark`）

## 说明

`public/` 目录为构建产物，通常由 Hugo 自动生成；实际内容维护建议以 `content/` 为准。
