.class public final Lcom/nianticproject/ingress/common/u/at;
.super Lcom/google/f/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/u/at;


# instance fields
.field private b:I

.field private c:Z

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

.field private p:Ljava/lang/Object;

.field private q:B

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3714
    new-instance v0, Lcom/nianticproject/ingress/common/u/at;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/u/at;-><init>(B)V

    .line 3715
    sput-object v0, Lcom/nianticproject/ingress/common/u/at;->a:Lcom/nianticproject/ingress/common/u/at;

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/u/at;->c:Z

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    .line 3716
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/f/f;-><init>(B)V

    .line 2736
    iput-byte v1, p0, Lcom/nianticproject/ingress/common/u/at;->q:B

    .line 2792
    iput v1, p0, Lcom/nianticproject/ingress/common/u/at;->r:I

    .line 2281
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2282
    invoke-direct {p0}, Lcom/google/f/f;-><init>()V

    .line 2736
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/at;->q:B

    .line 2792
    iput v0, p0, Lcom/nianticproject/ingress/common/u/at;->r:I

    .line 2282
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 2275
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;-><init>()V

    return-void
.end method

.method public static G()Lcom/nianticproject/ingress/common/u/au;
    .locals 1

    .prologue
    .line 2932
    invoke-static {}, Lcom/nianticproject/ingress/common/u/au;->e()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method

.method private H()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    .line 2326
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2327
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2329
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    .line 2332
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private I()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    .line 2358
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2359
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2361
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    .line 2364
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private J()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    .line 2390
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2391
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2393
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    .line 2396
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private K()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    .line 2422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2423
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2425
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    .line 2428
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private L()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    .line 2454
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2455
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2457
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    .line 2460
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private M()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    .line 2486
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2487
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2489
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    .line 2492
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private N()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    .line 2518
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2519
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2521
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    .line 2524
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private O()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    .line 2550
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2551
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2553
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    .line 2556
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private P()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    .line 2582
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2583
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2585
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    .line 2588
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private Q()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    .line 2614
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2615
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2617
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    .line 2620
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private R()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    .line 2646
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2647
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2649
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    .line 2652
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private S()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    .line 2678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2679
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2681
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    .line 2684
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method private T()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    .line 2710
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2711
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 2713
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    .line 2716
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/at;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput p1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    return p1
.end method

.method public static a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;
    .locals 1
    .parameter

    .prologue
    .line 2935
    invoke-static {}, Lcom/nianticproject/ingress/common/u/au;->e()Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/u/au;->a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/at;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/at;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static c()Lcom/nianticproject/ingress/common/u/at;
    .locals 1

    .prologue
    .line 2286
    sget-object v0, Lcom/nianticproject/ingress/common/u/at;->a:Lcom/nianticproject/ingress/common/u/at;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/u/at;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    .line 2632
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2633
    check-cast v0, Ljava/lang/String;

    .line 2641
    :goto_0
    return-object v0

    .line 2635
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2637
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2638
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2639
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2641
    goto :goto_0
.end method

.method public final B()Z
    .locals 2

    .prologue
    .line 2660
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    .line 2664
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2665
    check-cast v0, Ljava/lang/String;

    .line 2673
    :goto_0
    return-object v0

    .line 2667
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2669
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2670
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2671
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->o:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2673
    goto :goto_0
.end method

.method public final D()Z
    .locals 2

    .prologue
    .line 2692
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    .line 2696
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2697
    check-cast v0, Ljava/lang/String;

    .line 2705
    :goto_0
    return-object v0

    .line 2699
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2701
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2703
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->p:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2705
    goto :goto_0
.end method

.method public final F()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2738
    iget-byte v1, p0, Lcom/nianticproject/ingress/common/u/at;->q:B

    .line 2739
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2742
    :goto_0
    return v0

    .line 2739
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2741
    :cond_1
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/at;->q:B

    goto :goto_0
.end method

.method public final a(Lcom/google/f/d;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2747
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/u/at;->b()I

    .line 2748
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2749
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/u/at;->c:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/f/d;->a(IZ)V

    .line 2751
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2752
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->H()Lcom/google/f/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2754
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2755
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->I()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2757
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 2758
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->J()Lcom/google/f/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2760
    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2761
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->K()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2763
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2764
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->L()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2766
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 2767
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->M()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2769
    :cond_6
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 2770
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->N()Lcom/google/f/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2772
    :cond_7
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 2773
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->O()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2775
    :cond_8
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 2776
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->P()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2778
    :cond_9
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 2779
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->Q()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2781
    :cond_a
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 2782
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->R()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2784
    :cond_b
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 2785
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->S()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2787
    :cond_c
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 2788
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->T()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 2790
    :cond_d
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2794
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->r:I

    .line 2795
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2855
    :goto_0
    return v0

    .line 2797
    :cond_0
    const/4 v0, 0x0

    .line 2798
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2799
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/u/at;->c:Z

    invoke-static {v2}, Lcom/google/f/d;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2802
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2803
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->H()Lcom/google/f/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2806
    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2807
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->I()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2810
    :cond_3
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 2811
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->J()Lcom/google/f/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2814
    :cond_4
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 2815
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->K()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2818
    :cond_5
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2819
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->L()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2822
    :cond_6
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 2823
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->M()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2826
    :cond_7
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2827
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->N()Lcom/google/f/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2830
    :cond_8
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 2831
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->O()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2834
    :cond_9
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 2835
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->P()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2838
    :cond_a
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 2839
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->Q()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2842
    :cond_b
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 2843
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->R()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2846
    :cond_c
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 2847
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->S()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2850
    :cond_d
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 2851
    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/at;->T()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2854
    :cond_e
    iput v0, p0, Lcom/nianticproject/ingress/common/u/at;->r:I

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2298
    iget v1, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 2301
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/u/at;->c:Z

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 2308
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    .line 2312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2313
    check-cast v0, Ljava/lang/String;

    .line 2321
    :goto_0
    return-object v0

    .line 2315
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2317
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2318
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2321
    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 2340
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    .line 2344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2345
    check-cast v0, Ljava/lang/String;

    .line 2353
    :goto_0
    return-object v0

    .line 2347
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2349
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2350
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2351
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2353
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 2372
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    .line 2376
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2377
    check-cast v0, Ljava/lang/String;

    .line 2385
    :goto_0
    return-object v0

    .line 2379
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2381
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2382
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2385
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 2404
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    .line 2408
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2409
    check-cast v0, Ljava/lang/String;

    .line 2417
    :goto_0
    return-object v0

    .line 2411
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2413
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2414
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2417
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 2436
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    .line 2440
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2441
    check-cast v0, Ljava/lang/String;

    .line 2449
    :goto_0
    return-object v0

    .line 2443
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2445
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2446
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2447
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2449
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 2468
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    .line 2472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2473
    check-cast v0, Ljava/lang/String;

    .line 2481
    :goto_0
    return-object v0

    .line 2475
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2477
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2478
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2481
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 2500
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    .line 2504
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2505
    check-cast v0, Ljava/lang/String;

    .line 2513
    :goto_0
    return-object v0

    .line 2507
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2509
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2510
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2511
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2513
    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 2532
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    .line 2536
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2537
    check-cast v0, Ljava/lang/String;

    .line 2545
    :goto_0
    return-object v0

    .line 2539
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2541
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2542
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2543
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2545
    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 2564
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    .line 2568
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2569
    check-cast v0, Ljava/lang/String;

    .line 2577
    :goto_0
    return-object v0

    .line 2571
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2573
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2574
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2575
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2577
    goto :goto_0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 2596
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    .line 2600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2601
    check-cast v0, Ljava/lang/String;

    .line 2609
    :goto_0
    return-object v0

    .line 2603
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 2605
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 2606
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2607
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/at;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2609
    goto :goto_0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 2628
    iget v0, p0, Lcom/nianticproject/ingress/common/u/at;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
