# NEEPUTHESIS
	东北电力大学本科毕业设计论文LateX模板说明：
1. 本模板包含若干tex文件，其中“大论文模板.tex”为主文件，其余文件皆为插入到主文件的子文件并对应毕业论文各章节，在编译子文件时需要提前打开主文件，否则会发生编译错误。下面分别介绍各子文件。
2. "cover.tex"为封面tex文件，使用时只需修改为自己的信息即可，但需注意当论文题目过长时，需要将题目分成两行，分别替代“直流电压源逆变器及其消谐调制”和“技术研究”。
3. "摘要.tex"和"abstract.tex"为中英文摘要tex文件，使用时直接修改即可。
4. "chap01.tex"和"chap02.tex"为正文tex文件，注意由于模板目录中的二级标题和正文中的二级标题格式上有所区分，本模板特定义\subsubbsection命令替代原先的\subsubsection命令。如果论文需涉及到第三章、第四章等模板未设定的章节，需要在\section和第一个\subsection后加上"\renewcommand{\baselinestretch}{1.5}"和"\zihao{-4}"命令，保持正文1.5倍行距和小四号字体。
5. "conclusion.tex"、"thanks.tex"和"appendix.tex"分别为结论、致谢和附录tex文件，使用时直接修改即可。
6. "reference.tex"为参考文献tex文件，在使用时建立不要使用\bibitem{ref1}这样的命令来列举文献，而是将ref1改为文献的别称，以方便修改参考文献的前后顺序。例如"\bibitem{ref3} 赵洪涛．电力系统规划分类及方法探究[J]．中国电力教育，2013，11：184-185．"可以改为"\bibitem{psgh2013} 赵洪涛．电力系统规划分类及方法探究[J]．中国电力教育，2013，11：184-185．"
(当然也可以用bibtex整理文献，国标形式的宏包可以百度下载)
7. 之前忘记上传neepu.png，导致编译出错，在此重新上传。如果有余力的话，建议大家画一下矢量图（学业繁忙，暂时不能抽出时间仔细画，如果有画出来的欢迎commit）。
8. 本模板与学校的模板可能有细微的出入，建议以学校模板为准（小心中期和成品检查扣你分233333）。
9. 期待学弟学妹们能够提供开题报告、中期报告等模板！

	学长关于使用LateX排版的一些心得：
	LateX是一种可以实现精美排版的软件，它的使用一定程度上实现了格式与内容的分离。目前许多大学都推出学位论文LateX模板，例如清华大学的thuthesis。本模板基于学校教务处提供的模板，参考了许多院校的LateX模板，结合我在使用LateX排版过程中的一些经验整理所得，整理地比较仓促，有些遗漏、不妥之处敬请更正。
	如果先前没有接触过LateX，学长的建议是先去B站搜索LateX入门视频进行基础的学习，时间不长但可以让大家对LateX有一个比较全面的了解，然后在具体排版过程中参考刘海洋老师的《LaTeX入门》，也可以多去百度搜索，精进LateX排版的能力。希望学弟学妹们在使用过程中可以对源码进行改进，不断更新我校毕业设计LateX模板。
								                                                                                                                  
