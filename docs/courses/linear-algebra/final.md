# 线代期末复盘

<p align="right"> 辛朝阳笔记 </p>

## 几类特殊矩阵

### 可逆矩阵

概念：$A,B$ 为 $n$ 阶方阵，且 $AB=BA=I_n$
判定：$A$ 可逆 $\Leftrightarrow |A|\ne 0$
求法

- $A^{-1}=\dfrac{A^*}{|A|}$
- $\begin{bmatrix}A&I_n\end{bmatrix}\stackrel{行变换}{\longrightarrow}\begin{bmatrix}I_n&A\end{bmatrix}$
- 初等矩阵的逆
    - 对换矩阵：$P_{ij}^{-1}= P_{ij}$
    - 倍乘矩阵：$E_{ii; k}^{-1}= E_{ii;\frac{1}{k}}$
    - 倍加矩阵：$E_{ji; k}^{-1}= E_{ji;-k}$

性质

- $(A^{-1})^{-1}= A$
- $|A^{-1}|=\dfrac{1}{|A|}$
- $(kA)^{-1}=\dfrac{1}{k}A^{-1}$
- $(AB)^{-1}= B^{-1}A^{-1}$
- $(A^T)^{-1}=(A^{-1})^T$
- $(A^k)^{-1}=(A^{-1})^k$

### 实对称矩阵

$$A^T=A\\$$

性质：特征多项式的根都是 **实根**，实对称矩阵在 $\mathbb{C}$ 上的特征值都是 **实数**
实对称矩阵的谱分解

- 概念：对于 $n$ 阶实对称矩阵 $A$，存在 $n$ 阶正交矩阵 $Q$ 和实对角矩阵 $\varLambda$，使得 $A = Q\varLambda Q^T$
- 性质
    - 实对称矩阵属于不同特征值的特征向量互相正交
    正交相似
- 概念：对于实方阵 $A, B$，如果存在正交矩阵 $Q$ 使得 $Q^TAQ = B$，则称 $A$ 和 $B$ 正交相似

设实对称矩阵 $A$ 的特征值为 $\lambda_1\ge\lambda_2\ge\cdots\ge\lambda_n$，相应的特征向量为 $\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n$，则

$$\lambda_1=\max_{\mathbf x\ne 0}\dfrac{\mathbf{x}^TA\mathbf{x}}{\mathbf{x}^T\mathbf{x}}\\$$

$$\lambda_i=\max_{\mathbf{x}\ne 0,\mathbf{x}\perp\mathrm{span}{(\mathbf{q}_1,\cdots,\mathbf{q}_{i-1})}}\dfrac{\mathbf{x}^TA\mathbf{x}}{\mathbf{x}^T\mathbf{x}},i=2,\cdots,n\\$$

$$\lambda_n=\min_{\mathbf{x}\ne 0}\dfrac{\mathbf{x}^TA\mathbf{x}}{\mathbf{x}^T\mathbf{x}}\\$$

$$\lambda_i=\min_{\mathbf{x}\ne0,\mathbf{x}\perp\mathrm{span}(\mathbf{q}_{i+1},\cdots,\mathbf{q}_n)}\dfrac{\mathbf{x}^TA\mathbf{x}}{\mathbf{x}^T\mathbf{x}},i=1,\cdots,n-1\\$$

### 正交矩阵

概念：$n$ 阶方阵 $Q$ 满足 $Q^TQ=I_n$
性质

- $QQ^T = I_n$
- $Q^{-1}= Q^T$
- $Q^T$ 也是正交矩阵
- $Q$ 可逆
- $Q$ 的列向量构成 $\mathbb{R^n}$ 的一组标准正交基
- $Q$ 的行向量的转置组成 $\mathbb{R^n}$ 的一组标准正交基
- $|Q|$ 等于 $1$ 或 $-1$
- $Q$ 的特征值等于 $\pm 1$
- $\forall \mathbf x\in \mathbb{R^n},\Vert Q\mathbf x\Vert =\Vert \mathbf x\|$
- $\forall \mathbf x,\mathbf y\in\mathbb{R^n},(Q\mathbf x)^T(Q\mathbf y)=\mathbf x^T\mathbf y$（变换前后内积相等）

### 正定矩阵

概念：给定 $n$ 阶实矩阵 $A$，如果对任意非零向量 $\mathbf{x}\in\mathbb{R^n}$，都有 $\mathbf{x}^T\mathbf{x}>0$，则称 $A$ 正定
判定：对于实对称矩阵 $A$

- $A$ 的特征值都是正数
- 存在 **可逆** 矩阵 $T$，使得 $A = TT^T$
- $A$ 有 $LDL^T$ 分解，且 $D$ 的对角元素都是正数
- $A$ 的顺序主子式都是正数
- $A$ 的顺序主子阵都正定

类似定义

- $\mathbf{x}^TA\mathbf{x}> 0\Rightarrow$ 矩阵 $A$ **正定**
- $\mathbf{x}^TA\mathbf{x}\ge 0\Rightarrow$ 矩阵 $A$ **半正定**
- $\mathbf{x}^TA\mathbf{x}< 0\Rightarrow$ 矩阵 $A$ **负定**
- $\mathbf{x}^TA\mathbf{x}\le 0\Rightarrow$ 矩阵 $A$ **半负定**
- 不满足任一种，则称 $A$ **不定**

半正定的判定：对于 **实对称矩阵** $A$

- $A$ 的特征值都是非负数
- 存在矩阵 $T$，使得 $A = TT^T$
- 存在 $LDL^T$ 分解，且 $D$ 的对角元素都是非负数

不定矩阵的性质

- 对于 $n$ 阶实对称矩阵 $A$，若存在 $\mathbf{x},\mathbf{y}\in\mathbb{R^n}$，使得 $\mathbf{x}^TA\mathbf{x}> 0,\mathbf{y}^TA\mathbf{y}< 0$，则存在非零向量 $\mathbf{z}\in\mathbb{R^n}$，使得 $\mathbf{z}^TA\mathbf{z}= 0$

### 伴随矩阵

概念：方阵 $A$ 的代数余子式按顺序构成的矩阵的 **转置**
性质

- $A$ 可逆当且仅当 $A^*$ 可逆
- $AA^*= A^* A =|A|I_n$
- 若 $A$ **可逆**，则 $A^*=|A|A^{-1}$
- $\left\{\begin{aligned}&\mathrm{rank}(A)= n\rightarrow \mathrm{rank}(A^*)= n\\&\mathrm{rank}(A)= n-1\rightarrow\mathrm{rank}(A^*)= 1\\&\mathrm{rank}(A)< n-1\rightarrow\mathrm{rank}(A^*)= 0\end{aligned}\right.$
- $|A^*|=|A|^{n-1}$
- ${(A^*)}^* =|A|^{n-2}A$
- $(kA)^*= k^{n-1}A^*$
- $(AB)^*= B^* A^*$
- $(A^{-1})^*=(A^*)^{-1}$
- $(A^T)^*=(A^*)^T$

### 幂等矩阵

概念：$n$ 阶方阵满足 $P^2=P$
性质

- 特征值为 $0$ 和 $1$，$1$ 的重数为 $\mathrm{rank}(P)$
- $P$ 可相似对角化
- $I-P$ 也是幂等矩阵
- $\mathcal{N}(P)=\mathcal{R}(I-P),\mathcal{R}(P)=\mathcal{N}(I-P)$
- $\forall \mathbf x\in \mathcal{R}(P), P\mathbf x =\mathbf x$
- 幂等矩阵是投影矩阵，是沿着 $\mathcal{N}(P)$ 向 $\mathcal{R}(P)$ 的投影

## 矩阵的秩

概念：非零子式的最高阶数
求法：初等行变换，阶梯形矩阵主元的个数
性质

- $\mathrm{rank}(A)= 0\Leftrightarrow A = O$
- $\mathrm{rank}(A)=\mathrm{rank}(A^T)=\mathrm{rank}(AA^T)=\mathrm{rank}(A^TA)$
- $\mathrm{rank}(A)+\mathrm{rank}(B)-n\le \mathrm{rank}(AB)\le \min\{\mathrm{rank}(A),\mathrm{rank}(B)\}$
- $\max\{\mathrm{rank}(A),\mathrm{rank}(B)\}\le \mathrm{rank}\begin{bmatrix}A&B\end{bmatrix}\le \mathrm{rank}(A)+\mathrm{rank}(B)$
- $\mathrm{rank}(A\pm B)\le \mathrm{rank}(A)+\mathrm{rank}(B)$
- $\mathrm{rank}(kA)=\mathrm{rank}(A)$
- 若方阵 $A, B$ 有 $AB = O$，则 $\mathrm{rank}(A)+\mathrm{rank}(B)\le n$
- $C =\begin{pmatrix}A&O\\O&B\end{pmatrix}\rightarrow\mathrm{rank}(C)=\mathrm{rank}(A)+\mathrm{rank}(B)$
- $D =\begin{pmatrix}A&C\\O&B\end{pmatrix}\rightarrow \mathrm{rank}(D)\ge\mathrm{rank}(A)+\mathrm{rank}(B)$
- $A^2 = A\Longleftrightarrow\mathrm{rank}(A)+\mathrm{rank}(I-A)= n$
- $\mathrm{rank}(ABC)\ge\mathrm{rank}(AB)+\mathrm{rank}(BC)-\mathrm{rank}(B)$
- $\mathrm{rank}(I-AB)=\mathrm{rank}(I-BA)$

矩阵列空间的维数 $\dim\mathcal R(A)$ 为矩阵的秩，记为 $\mathrm{rank}(A)$
矩阵零空间的维数 $\dim\mathcal {N}(A)$ 为矩阵的零度，记为 $\mathrm{nullity}(A)$
秩 - 零度定理：$\mathrm{rank}(A)+\mathrm{nullity}(A)=n$

## 矩阵的关系

### 矩阵相抵（等价）

概念

- 存在可逆矩阵 $P$，使得 $PA = B$，则称 $A$ 与 $B$ **左相抵**
- 存在可逆矩阵 $P, Q$，使得 $PAQ = B$，则称 $A$ 与 $B$ **相抵**
  相抵标准形 $D_r=\begin{pmatrix}I_r&O\\O&O\end{pmatrix}$

### 矩阵相似

概念：存在一个可逆矩阵 $P$，使得 $P^{-1}AP=B$，则称 $A$ 与 $B$ 相似
判定：若 $A,B$ 均可相似对角化，且 $A$ 与 $B$ 的特征值相同，则 $A$ 与 $B$ 相似
性质：若 $A$ 与 $B$ 相似，则 $A$ 与 $B$ 的 <span style="color: rgb(255, 41, 65);"> **特征值、秩、迹、行列式、代数重数、特征多项式** </span> 相同
矩阵 $A$ 可相似对角化的条件：矩阵 $A$ 的任意特征值的几何重数与其代数重数相等
几何重数与代数重数

- 几何重数：方程 $(\lambda I-A)\mathbf{x}= 0$ 的基础解系的个数
- 代数重数：特征值在特征方程解中重复的次数
  同时对角化：若对 $n$ 阶方阵 $A,B$，存在可逆矩阵 $X$ 使得 $X^{-1}AX=\varLambda_1,X^{-1}BX=\varLambda_2$ 都是对角矩阵
- 存在 $n$ 个线性无关的向量，同时是 $A, B$ 的特征向量
- $AB = BA$

### 矩阵合同

概念：方阵 $A$，存在可逆矩阵 $X$，使得 $X^TAX=B$，则称 $A$ 和 $B$ **合同**
判定：两方阵 $A,B$ 的特征值的正负性相同
合同标准形 $\begin{bmatrix}I_p\\&-I_{r-p}\\&&O\end{bmatrix}$
惯性指数

- 合同标准形中，$p$ 称为 $A$ 的 **正惯性指数**，$r-p$ 为 $A$ 的 **负惯性指数**，三元组 $(p, n-p, n-r)$ 称为 $A$ 的 **惯性指数**
  性质
- 实对称矩阵相似一定合同，合同不一定相似
- 合同矩阵的秩相同，等于 $r$
- 若 $\mathrm{rank}(A)= 1$，则 $A^n =\left(\mathbf{a}\mathbf{b}^T\right)^n =\mathbf{a}\left(\mathbf{b}^T\mathbf{a}\right)^{n-1}\mathbf{b}^T =\left(\mathbf{b}^T\mathbf{a}\right)^{n-1}A =\mathrm{trace}(A)^{n-1}A$，同时其 **特征值** 为 $0,0,\cdots,0,\mathrm{trace}(A)$

<缺失的图片>

## 二次型

概念：齐二次函数 $\displaystyle f(x_1,x_2,\cdots,x_n)=\sum_{i=1}^n\sum_{j=1}^na_{ij}x_ix_j$ 称为自变量 $x_1,x_2,\cdots,x_n$ 的 **二次型**
性质

- 存在 **实对称** 矩阵 $A =\left [\dfrac{a_{ij}+a_{ji}}{2}\right]$ 使得 $f =\mathbf{x}^TA\mathbf{x}$，此时称 $A$ 为二次型矩阵
- 若 $f =\mathbf x^TA\mathbf x$，但 $A$ 不为实对称矩阵，则二次型矩阵为 $\dfrac{A+A^T}{2}$
  正负惯性指数
- 求二次型矩阵的特征值
- 配方法：$A = T^TJT,\mathbf y = T\mathbf x =\begin{bmatrix}y_1\\\vdots\\y_n\end{bmatrix}$，则 $f(\mathbf{x})= y_1^2+\cdots+y_p^2-y_{p+1}^2-\cdots-y_r^2$
  可逆线性变换
- 令 $\mathbf x = C\mathbf y$ $(C\small 可逆)$，则 $f =\mathbf x^TA\mathbf x =(C\mathbf y)^TA(C\mathbf y)=\mathbf y^TC^TAC\mathbf y$，令 $B = C^TAC$，两二次型矩阵合同

## 矩阵分解

### LU 分解

概念：对 $n$ 阶方阵 $A$，存在 $n$ 阶单位下三角矩阵 $L$ 和 $n$ 阶上三角矩阵 $U$，使得 $A=LU$
性质：对 $n$ 阶可逆矩阵 $A$，$A$ 有 $LU$ 分解 **当且仅当** $A$ 的所有顺序主子阵都可逆，此时 $A$ 的 $LU$ 分解唯一
可逆矩阵有 $LDU$ 分解（$L,U$ 分别为单位下三角矩阵和单位上三角矩阵）
**可逆对称** 矩阵有 $LDL^T$ 分解
$PLU$ 分解，$L$ 为单位下三角矩阵

### QR 分解

概念：对矩阵 $A$，存在唯一分解 $A=QR$，其中 $Q$ 是正交矩阵，$R$ 是上三角矩阵。特别地，若 $A$ 可逆，则 $R$ 的对角元全为正数
可逆矩阵 $\text{QR}$ 分解

- 第一步：取一组基
- 第二步：$\text{Gram-Schmidt}$ 正交化，得到 $\widetilde{Q}$
- 第三步：单位化
  一般矩阵 $A$ 的 $\text{QR}$ 分解
- 第一步：找出 $A = Q_1R_1$，其中 $Q_1$ 为 **列正交矩阵**，$R_1$ 为具有非负对角元的 $n$ 阶上三角矩阵。此过程可以逐列计算
- 第二步：进行扩充 $Q =\begin{bmatrix}Q_1&Q_2\end{bmatrix}$，$R =\begin{bmatrix}R_1\\O\end{bmatrix}$

### 谱分解

对方阵 $A$，存在可逆矩阵 $X$ 使得 $X^{-1}AX=\varLambda$，$\varLambda$ 为对角矩阵，则 $A=X\varLambda X^{-1}$ 称为 $A$ 的谱分解
谱分解的步骤

- 求特征值，$\det(\lambda I-A)= 0$
- 求方程 $(\lambda I-A)\mathbf x =\mathbf0$ 的基础解系
- 实对称矩阵还需对每个 $\lambda_i$ 对应的基础解系进行 **正交化**

意义：$A^t=\left(X\varLambda X^{-1}\right)^t=X\varLambda^tX^{-1}$
可对角化的判定

- $A$ 有 $n$ 个线性无关的特征向量
- $A$ 的特征向量构成 $\mathbb{F^n}$ 的一组基
- $A$ 的属于不同特征子空间的维数之和为 $n$
- $A$ 的属于不同特征子空间的直和为 $\mathbb{F^n}$
- $A$ 的所有特征值的几何重数等于代数重数

### 奇异值分解

奇异值：$m\times n$ 的矩阵 $A$，$\exists \mathbf x\in\mathbb{R^n},\mathbf y\in\mathbb{R^m},A\mathbf x=\sigma \mathbf y,A^T\mathbf y=\sigma \mathbf x$，则称 $\sigma$ 为 $A$ 的奇异值，$\mathbf x$ 为 $A$ 的属于 $\sigma$ 的 **右奇异向量**，$\mathbf y$ 为 $A$ 的属于 $\sigma$ 的 **左奇异向量**

- $A$ 的右奇异向量是 $A^TA$ 的特征向量，$A$ 的左奇异向量是 $AA^T$ 的特征向量
- $A$ 的特征值是 $A^TA$ 或 $AA^T$ 的 **算数平方根**

给定 $m\times n$ 矩阵 $A$，$m$ 阶正交矩阵 $U$ 和 $n$ 阶正交矩阵 $V$，使得 $A=U\varSigma V^T$，其中 $\varSigma=\begin{bmatrix}\varSigma_r&O\\O&O\end{bmatrix},\varSigma_r=\begin{bmatrix}\sigma_1\\&\ddots\\&&\sigma_r\end{bmatrix}(\sigma_1\ge \cdots\ge\sigma_r)$
奇异值分解的步骤

- $AA^T$ 进行谱分解 $AA^T = U\varSigma^2U^T$（$A^TA$ 进行谱分解 $A^TA = V\varSigma^2V^T$）
- $U = AV\varSigma^{-1}$（$V =(\varSigma^{-1}U^TA)^T$）

矩阵的广义逆：$A^+=V_r\varSigma_r^{-1}U_r^T$
矩阵的谱范数：$\displaystyle\|A\|=\max_{\mathbf x\ne 0}\dfrac{\|A\mathbf x\|}{\|\mathbf x\|}$

- $\|A\|\ge 0$
- $\|A\|= 0$ 当且仅当 $A = O$
- $\|kA\|=|k|\|A\|$
- $\|A+B\|\le \|A\|+\|B\|$
- $\|AB\|\le\|A\|\|B\|$
- 若 $U, V$ 正交，则 $\|UAV^T\|=\|A\|$

矩阵的 $F$ 范数：对任意矩阵 $\displaystyle A=[a_{ij}]_{m\times n}$ $\|A\|_F=\sqrt{\mathrm{trace}(A^TA)}=\sqrt{\sum_{i=1}^m\sum_{j=1}^n|a_{ij}|^2}$

- $\|A\|_F\ge 0$
- $\|A\|_F = 0$ 当且仅当 $A = O$
- $\|kA\|_F =|k|\|A\|_F$
- $\|A+B\|_F\le \|A\|_F+\|B\|_F$
- $\|AB\|_F\le \|A\|\|B\|_F,\|AB\|\le \|A\|_F\|B\|,\|AB\|_F\le\|A\|_F\|B\|_F$
- 若 $U, V$ 正交，则 $\|UAV^T\|_F =\|A\|_F$
- $\|A\|^2_F$ 等于 $A$ 的所有奇异值的平方和

## 线性空间

### 线性空间的条件

集合非空
加法和数乘封闭
加法结合律
加法交换律
零元素
负元素
单位 $1$
数乘结合律
数乘对数的分配律
数乘对向量的分配律

### 线性空间的性质

零向量唯一
任一向量的负向量唯一
$\mathbf a+\mathbf b=\mathbf a+\mathbf c\Rightarrow \mathbf b=\mathbf c$
$\mathbf a+\mathbf b=\mathbf c\Rightarrow \mathbf a=\mathbf c-\mathbf b$
$0\mathbf a=\mathbf 0,k\mathbf 0=\mathbf 0$
$k\mathbf a=\mathbf b,k\ne0\Rightarrow \mathbf a=\dfrac{1}{k}\mathbf b$

### 几种线性空间

数组向量空间

- $m$ 维向量的全体 $\mathbb{F^m}$
- 子集：列空间 $\mathcal{R}(A),\mathcal{N}(A)$

矩阵空间

- $m\times n$ 矩阵的全体 $\mathbb F^{m\times n}$
- 子集：$n$ 阶上（下）三角矩阵的全体；$n$ 阶对角矩阵的全体；$n$ 阶（反）对称矩阵的全体

函数空间

- 定义域为 $D$ 的实值函数 $f: D\to \mathbb{R}$ 的全体构成 $\mathbb{R}$ 上的线性空间
- 其中连续函数的全体称为连续函数空间 $C(D)$
- 无穷次可导函数的全体称为光滑函数空间 $C^\infty(D)$
- 式系数多项式的全体构成 $\mathbb{R}$ 上的线性空间，称为多项式空间 $\mathbb{R}[x]$
- 次数 **小于** $n$ 的实系数多项式的全体 $\mathbb{R}[x]_n$
- 系数取自 $\mathbb F$ 的多项式的全体 $\mathbb{F}[x]$，次数小于 $n$ 的多项式 $\mathbb{F}[x]_n$

### 线性子空间

概念：线性空间 $\mathcal{V}$ 的 **非空** 子集 $\mathcal{M}$ 是一个子空间，当且仅当它对 $\mathcal V$ 上的加法和数乘封闭
子空间的交：集合 $\mathcal M_1\cap \mathcal M_2$
子空间的和：集合 $\mathcal M_1+\mathcal M_2=\{\mathbf m_1+\mathbf m_2\;|\;\mathbf m_1\in \mathcal M_1,\mathbf m_2\in \mathcal M_2\}$

- 子空间的直和：每个元素有唯一分解式，记为 $\mathcal M_1\oplus \mathcal M_2$
- 直和的判定
    - $\mathbf 0 =\mathbf m_1+\mathbf m_2,\mathbf m_1\in \mathcal M_1,\mathbf m_2\in \mathcal M_2\Rightarrow \mathbf m_1 =\mathbf m_2 =\mathbf 0$
    - $\mathcal {M_1\cap M_2}=\{\mathbf 0\}$

矩阵 $A_{m\times n}$ 的子空间

- 列空间：$\mathcal{R}(A),\dim{\mathcal{R}(A)= r}$
- 行空间：$\mathcal{R}(A^T),\dim{\mathcal{R}(A^T)= r}$
- 零空间：$\mathcal{N}(A),\dim{\mathcal{N}(A)}= n-r$
- 左零空间：$\mathcal{N}(A^T),\dim{\mathcal{N}(A^T)}= m-r$

矩阵 $A$ 子空间的正交关系

- $\mathcal{R}(A)^\perp =\mathcal{N}(A^T)$
- $\mathcal{N}(A)^\perp =\mathcal{R}(A^T)$

## 投影

### 正交投影

概念：线性变换 $P:\mathbb{R^n}\to\mathcal{M}$，满足 $\forall\mathbf a\in\mathbb{R^n},P(\mathbf a)\perp (\mathbf a-P(\mathbf a))$
性质

- $I_n = P_{\mathcal M}+P_{\mathcal M^\perp}$
- $\displaystyle\|\mathbf a-P(\mathbf a)\|=\min_{\mathbf x\in \mathcal M}\|\mathbf a-\mathbf x\|$

### 正交投影矩阵

概念：矩阵 $A$ 的列空间上的正交投影的表示矩阵 $P_{\mathcal R(A)}$ 为关于 $A$ 的正交投影矩阵，简记为 $P_A$
若矩阵 $A$ 列满秩，则 $P_A=A(A^TA)^{-1}A^T$
一般地，$\left\{\begin{aligned}&P_{\mathcal{R}(A)}=AA^+\\&P_{\mathcal{R}(A^T)}=A^+A\\&P_{\mathcal{N}(A)}=I-A^+A\\&P_{\mathcal{N}(A^T)}=I-AA^+\end{aligned}\right.$
性质

- 正交投影矩阵是特殊的 **幂等矩阵**
- $\mathcal{R}(P_A)\perp\mathcal{N}(P_A)$
- $P_A^T = P_A$

## 行列式

初等矩阵的行列式

- 对换矩阵：$|P_{ij}|=-1$
- 倍乘矩阵：$|E_{ii; k}|= k$
- 倍加矩阵：$|E_{ji; k}|= 1$

代数余子式：$C_{ij}=(-1)^{i+j}M_{ij}=(-1)^{i+j}\det\left(A\begin{pmatrix}i\\j\end{pmatrix}\right)$

行列式的展开式

- $\det(A)= a_{1j}C_{1j}+a_{2j}C_{2j}+\cdots+a_{nj}C_{nj}$
- $\det(A)= a_{i1}C_{i1}+a_{i2}C_{i2}+\cdots+a_{in}C_{in}$

性质

- 令 $A =\begin{bmatrix}\mathbf a_1&\cdots&\mathbf a_n\end{bmatrix}$，记 $\mathbf c_j =\begin{bmatrix}C_{1j}\\\vdots\\C_{nj}\end{bmatrix}$，则 $\mathbf a_i^T\mathbf c_j = 0(i\ne j),\mathbf a^T_j\mathbf c_j =\det(A)$
- $\det(A^{-1})=\dfrac{1}{\det(A)}$
- $\det(A)=\det(A^T)$
- $\det(kA)= k^n\det(A)$
- $\det(AB)=\det(A)\det(B)$
- $\det\begin{pmatrix}A&\mathbf a+\mathbf b &B\end{pmatrix}=\det\begin{pmatrix}A&\mathbf a & B\end{pmatrix}+\det\begin{pmatrix}A&\mathbf b&B\end{pmatrix}$
- $\det\begin{pmatrix}A\\\mathbf a+\mathbf b\\B\end{pmatrix}=\det\begin{pmatrix}A\\\mathbf a\\B\end{pmatrix}+\det\begin{pmatrix}A\\\mathbf b\\B\end{pmatrix}$

计算技巧

- 升阶法
- 降阶法
- 递推法
- 化三角矩阵

特殊矩阵的行列式

- 范德蒙矩阵：$\displaystyle V(x_1,\cdots, x_n)=\prod_{1\le j < i\le n}(x_i-x_j)$
  cramer 法则
- 记 $A =\begin{bmatrix}\mathbf a_1&\mathbf a_2&\cdots&\mathbf a_n\end{bmatrix}$，$\det(A)\ne 0$ 时，方程 $A\mathbf x =\mathbf b$ 有唯一解，记用 $\mathbf b$ 替换掉 $A$ 中 $\mathbf a_i$ 的矩阵为 $B_i$，则 $x_i =\dfrac{\det(B_i)}{\det(A)}$
