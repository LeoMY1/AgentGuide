# RAG 资源总览

> 本目录汇总 RAG（检索增强生成）方向的选型指南、工程实践与论文清单。
> Agent 方向的对应资源见 [Agent 资源总览](../agent/README.md)。

---

## 📑 目录

| 文档 | 内容 | 篇幅 |
|:---|:---|:---:|
| [向量数据库选型指南](./vector-db.md) | Milvus / FAISS / Chroma / Qdrant / Pinecone 五个核心向量库的详细对比、决策树与性能数据 | 226 行 |
| [文档解析工具精选](./document-parsing.md) | Pipeline 式方案、文档领域微调大模型、通用多模态大模型三条技术路线，覆盖文本识别、版式布局、公式解析、表格解析 | 1290 行 |
| [RAG 开源项目汇总](./projects.md) | 150+ 个开源项目，按开箱即用平台、开发框架、GraphRAG、引擎服务、评估优化、数据处理、应用项目分类 | 594 行 |
| [RAG 论文汇总](./papers/README.md) | 按研究方向分类的论文清单 | — |

---

## 🗂️ 论文分类

- [Agentic RAG](./papers/agentic_rag/README.md) —— 用智能体系统改进检索过程
- [GraphRAG](./papers/graphrag/README.md) —— 用知识图谱增强检索
- [Multimodal RAG](./papers/multimodal_rag/README.md) —— 面向多模态数据（文本、图像等）的 RAG

---

## 🧭 从这里开始

刚接触 RAG，建议按这个顺序：

1. **[向量数据库选型指南](./vector-db.md)** —— 先搞清楚检索层用什么，里面有决策树和面试常见的选型追问
2. **[文档解析工具精选](./document-parsing.md)** —— 入库前的数据处理，实践中最容易踩坑的一环
3. **[RAG 开源项目汇总](./projects.md)** —— 找一个能跑的项目改造成自己的作品集

---

## 🔗 相关资源

- [Agent 资源总览](../agent/README.md) —— Agent 开发框架、工具调用、记忆模块
- [开发者工具箱](../tools.md) —— 通用开发工具
- [RAG 全链路教程](../../docs/02-tech-stack/20-rag-full-pipeline.md) —— AgentGuide 教程正文（🚧 建设中）
- [高可用 RAG 实战](../../docs/03-practice/02-high-availability-rag.md) —— 工程化实践（🚧 建设中）

---

**👉 返回主文档**：[AgentGuide README](../../README.md)
