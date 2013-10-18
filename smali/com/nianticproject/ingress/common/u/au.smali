.class public final Lcom/nianticproject/ingress/common/u/au;
.super Lcom/google/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/f/g",
        "<",
        "Lcom/nianticproject/ingress/common/u/at;",
        "Lcom/nianticproject/ingress/common/u/au;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2944
    invoke-direct {p0}, Lcom/google/f/g;-><init>()V

    .line 3243
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->c:Ljava/lang/Object;

    .line 3279
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->d:Ljava/lang/Object;

    .line 3315
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->e:Ljava/lang/Object;

    .line 3351
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->f:Ljava/lang/Object;

    .line 3387
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->g:Ljava/lang/Object;

    .line 3423
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->h:Ljava/lang/Object;

    .line 3459
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->i:Ljava/lang/Object;

    .line 3495
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->j:Ljava/lang/Object;

    .line 3531
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->k:Ljava/lang/Object;

    .line 3567
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->l:Ljava/lang/Object;

    .line 3603
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->m:Ljava/lang/Object;

    .line 3639
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->n:Ljava/lang/Object;

    .line 3675
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/au;->o:Ljava/lang/Object;

    .line 2945
    return-void
.end method

.method static synthetic e()Lcom/nianticproject/ingress/common/u/au;
    .locals 1

    .prologue
    .line 2939
    new-instance v0, Lcom/nianticproject/ingress/common/u/au;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/au;-><init>()V

    return-object v0
.end method

.method private f()Lcom/nianticproject/ingress/common/u/au;
    .locals 2

    .prologue
    .line 2988
    new-instance v0, Lcom/nianticproject/ingress/common/u/au;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/au;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/u/au;->d()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/au;->a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/f/b;
    .locals 1

    .prologue
    .line 2939
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/au;->f()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3078
    invoke-static {}, Lcom/nianticproject/ingress/common/u/at;->c()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return-object p0

    .line 3079
    :cond_1
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3080
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->a(Z)Lcom/nianticproject/ingress/common/u/au;

    .line 3082
    :cond_2
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3083
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3085
    :cond_3
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3086
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3088
    :cond_4
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3089
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3091
    :cond_5
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3092
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->d(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3094
    :cond_6
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3095
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->e(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3097
    :cond_7
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3098
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->f(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3100
    :cond_8
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3101
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->g(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3103
    :cond_9
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3104
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->h(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3106
    :cond_a
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3107
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->i(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3109
    :cond_b
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3110
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->j(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3112
    :cond_c
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->z()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3113
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->k(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3115
    :cond_d
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3116
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->l(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    .line 3118
    :cond_e
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/at;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/au;->m(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3258
    if-nez p1, :cond_0

    .line 3259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3261
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3262
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->c:Ljava/lang/Object;

    .line 3264
    return-object p0
.end method

.method public final a(Z)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3230
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3231
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/au;->b:Z

    .line 3233
    return-object p0
.end method

.method public final synthetic b()Lcom/google/f/g;
    .locals 1

    .prologue
    .line 2939
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/au;->f()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3294
    if-nez p1, :cond_0

    .line 3295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3297
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3298
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->d:Ljava/lang/Object;

    .line 3300
    return-object p0
.end method

.method public final c()Lcom/nianticproject/ingress/common/u/at;
    .locals 2

    .prologue
    .line 2996
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/u/au;->d()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v0

    .line 2997
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/at;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2998
    new-instance v0, Lcom/google/f/k;

    invoke-direct {v0}, Lcom/google/f/k;-><init>()V

    throw v0

    .line 3000
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3330
    if-nez p1, :cond_0

    .line 3331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3333
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3334
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->e:Ljava/lang/Object;

    .line 3336
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2939
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/au;->f()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/u/at;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3014
    new-instance v2, Lcom/nianticproject/ingress/common/u/at;

    invoke-direct {v2, v1}, Lcom/nianticproject/ingress/common/u/at;-><init>(C)V

    .line 3015
    iget v3, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3017
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    .line 3020
    :goto_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/u/au;->b:Z

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->a(Lcom/nianticproject/ingress/common/u/at;Z)Z

    .line 3021
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3022
    or-int/lit8 v0, v0, 0x2

    .line 3024
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->a(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3026
    or-int/lit8 v0, v0, 0x4

    .line 3028
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->b(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 3030
    or-int/lit8 v0, v0, 0x8

    .line 3032
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->c(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 3034
    or-int/lit8 v0, v0, 0x10

    .line 3036
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->d(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 3038
    or-int/lit8 v0, v0, 0x20

    .line 3040
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->e(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 3042
    or-int/lit8 v0, v0, 0x40

    .line 3044
    :cond_5
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->f(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 3046
    or-int/lit16 v0, v0, 0x80

    .line 3048
    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->g(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 3050
    or-int/lit16 v0, v0, 0x100

    .line 3052
    :cond_7
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->h(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 3054
    or-int/lit16 v0, v0, 0x200

    .line 3056
    :cond_8
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->i(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 3058
    or-int/lit16 v0, v0, 0x400

    .line 3060
    :cond_9
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->j(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 3062
    or-int/lit16 v0, v0, 0x800

    .line 3064
    :cond_a
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->k(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 3066
    or-int/lit16 v0, v0, 0x1000

    .line 3068
    :cond_b
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->l(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    .line 3070
    or-int/lit16 v0, v0, 0x2000

    .line 3072
    :cond_c
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/au;->o:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/at;->m(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/u/at;->a(Lcom/nianticproject/ingress/common/u/at;I)I

    .line 3074
    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3366
    if-nez p1, :cond_0

    .line 3367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3369
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3370
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->f:Ljava/lang/Object;

    .line 3372
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3402
    if-nez p1, :cond_0

    .line 3403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3405
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3406
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->g:Ljava/lang/Object;

    .line 3408
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3438
    if-nez p1, :cond_0

    .line 3439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3441
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3442
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->h:Ljava/lang/Object;

    .line 3444
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3474
    if-nez p1, :cond_0

    .line 3475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3477
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3478
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->i:Ljava/lang/Object;

    .line 3480
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3510
    if-nez p1, :cond_0

    .line 3511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3513
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3514
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->j:Ljava/lang/Object;

    .line 3516
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3546
    if-nez p1, :cond_0

    .line 3547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3549
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3550
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->k:Ljava/lang/Object;

    .line 3552
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3582
    if-nez p1, :cond_0

    .line 3583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3585
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3586
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->l:Ljava/lang/Object;

    .line 3588
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3618
    if-nez p1, :cond_0

    .line 3619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3621
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3622
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->m:Ljava/lang/Object;

    .line 3624
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3654
    if-nez p1, :cond_0

    .line 3655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3657
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3658
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->n:Ljava/lang/Object;

    .line 3660
    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 3690
    if-nez p1, :cond_0

    .line 3691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3693
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/nianticproject/ingress/common/u/au;->a:I

    .line 3694
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/au;->o:Ljava/lang/Object;

    .line 3696
    return-object p0
.end method
