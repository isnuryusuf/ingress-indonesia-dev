.class public final Lcom/nianticproject/ingress/common/u/ax;
.super Lcom/google/f/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/u/ax;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:J

.field private e:F

.field private f:F

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:B

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1073
    new-instance v0, Lcom/nianticproject/ingress/common/u/ax;

    invoke-direct {v0, v4}, Lcom/nianticproject/ingress/common/u/ax;-><init>(B)V

    .line 1074
    sput-object v0, Lcom/nianticproject/ingress/common/u/ax;->a:Lcom/nianticproject/ingress/common/u/ax;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/nianticproject/ingress/common/u/ax;->d:J

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->e:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->f:F

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->h:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->i:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->j:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->k:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->l:F

    iput v3, v0, Lcom/nianticproject/ingress/common/u/ax;->m:F

    iput v4, v0, Lcom/nianticproject/ingress/common/u/ax;->n:I

    .line 1075
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/f/f;-><init>(B)V

    .line 316
    iput-byte v1, p0, Lcom/nianticproject/ingress/common/u/ax;->o:B

    .line 366
    iput v1, p0, Lcom/nianticproject/ingress/common/u/ax;->p:I

    .line 143
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 144
    invoke-direct {p0}, Lcom/google/f/f;-><init>()V

    .line 316
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/ax;->o:B

    .line 366
    iput v0, p0, Lcom/nianticproject/ingress/common/u/ax;->p:I

    .line 144
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ax;-><init>()V

    return-void
.end method

.method public static A()Lcom/nianticproject/ingress/common/u/ay;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/nianticproject/ingress/common/u/ay;->d()Lcom/nianticproject/ingress/common/u/ay;

    move-result-object v0

    return-object v0
.end method

.method private B()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    .line 178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->e:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->n:I

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/u/ax;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/ax;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->f:F

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/ax;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    return p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->h:F

    return p1
.end method

.method public static c()Lcom/nianticproject/ingress/common/u/ax;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/nianticproject/ingress/common/u/ax;->a:Lcom/nianticproject/ingress/common/u/ax;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->i:F

    return p1
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->j:F

    return p1
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->k:F

    return p1
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->l:F

    return p1
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/u/ax;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ax;->m:F

    return p1
.end method


# virtual methods
.method public final a(Lcom/google/f/d;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/u/ax;->b()I

    .line 328
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ax;->B()Lcom/google/f/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 331
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 332
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/ax;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/f/d;->a(IJ)V

    .line 334
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 335
    const/4 v0, 0x3

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->e:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 337
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 338
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->f:F

    invoke-virtual {p1, v3, v0}, Lcom/google/f/d;->a(IF)V

    .line 340
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 341
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/f/d;->a(IF)V

    .line 340
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 343
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 344
    const/4 v0, 0x6

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->h:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 346
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 347
    const/4 v0, 0x7

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->i:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 349
    :cond_6
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 350
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->j:F

    invoke-virtual {p1, v4, v0}, Lcom/google/f/d;->a(IF)V

    .line 352
    :cond_7
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    .line 353
    const/16 v0, 0x9

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->k:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 355
    :cond_8
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 356
    const/16 v0, 0xa

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->l:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 358
    :cond_9
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 359
    const/16 v0, 0xb

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->m:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 361
    :cond_a
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_b

    .line 362
    const/16 v0, 0xc

    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(II)V

    .line 364
    :cond_b
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 368
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->p:I

    .line 369
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 423
    :goto_0
    return v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 372
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ax;->B()Lcom/google/f/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 376
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 377
    iget-wide v1, p0, Lcom/nianticproject/ingress/common/u/ax;->d:J

    invoke-static {v3, v1, v2}, Lcom/google/f/d;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 381
    const/4 v1, 0x3

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->e:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_3
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 385
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->f:F

    invoke-static {v4}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 391
    add-int/2addr v0, v1

    .line 392
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ax;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 394
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 395
    const/4 v1, 0x6

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->h:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_5
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 399
    const/4 v1, 0x7

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->i:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_6
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 403
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->j:F

    invoke-static {v5}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_7
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 407
    const/16 v1, 0x9

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->k:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_8
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 411
    const/16 v1, 0xa

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->l:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_9
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 415
    const/16 v1, 0xb

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->m:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_a
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 419
    const/16 v1, 0xc

    iget v2, p0, Lcom/nianticproject/ingress/common/u/ax;->n:I

    invoke-static {v1, v2}, Lcom/google/f/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_b
    iput v0, p0, Lcom/nianticproject/ingress/common/u/ax;->p:I

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    .line 164
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Ljava/lang/String;

    .line 173
    :goto_0
    return-object v0

    .line 167
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 169
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/ax;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final g()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/ax;->d:J

    return-wide v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final i()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->e:F

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final k()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->f:F

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final m()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->h:F

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final o()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->i:F

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final q()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->j:F

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final s()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->k:F

    return v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final u()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->l:F

    return v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final w()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->m:F

    return v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->b:I

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

.method public final y()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ax;->n:I

    return v0
.end method

.method public final z()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 318
    iget-byte v1, p0, Lcom/nianticproject/ingress/common/u/ax;->o:B

    .line 319
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_1
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/ax;->o:B

    goto :goto_0
.end method
