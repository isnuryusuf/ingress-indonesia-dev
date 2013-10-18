.class public final Lcom/nianticproject/ingress/common/u/av;
.super Lcom/google/f/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/u/av;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/u/ax;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ljava/lang/Object;

.field private i:Lcom/nianticproject/ingress/common/u/at;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:F

.field private n:F

.field private o:B

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2209
    new-instance v0, Lcom/nianticproject/ingress/common/u/av;

    invoke-direct {v0, v3}, Lcom/nianticproject/ingress/common/u/av;-><init>(B)V

    .line 2210
    sput-object v0, Lcom/nianticproject/ingress/common/u/av;->a:Lcom/nianticproject/ingress/common/u/av;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/nianticproject/ingress/common/u/av;->g:J

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    invoke-static {}, Lcom/nianticproject/ingress/common/u/at;->c()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/u/av;->i:Lcom/nianticproject/ingress/common/u/at;

    iput v3, v0, Lcom/nianticproject/ingress/common/u/av;->j:I

    iput-boolean v3, v0, Lcom/nianticproject/ingress/common/u/av;->k:Z

    iput-boolean v3, v0, Lcom/nianticproject/ingress/common/u/av;->l:Z

    iput v4, v0, Lcom/nianticproject/ingress/common/u/av;->m:F

    iput v4, v0, Lcom/nianticproject/ingress/common/u/av;->n:F

    .line 2211
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/f/f;-><init>(B)V

    .line 1260
    iput-byte v1, p0, Lcom/nianticproject/ingress/common/u/av;->o:B

    .line 1310
    iput v1, p0, Lcom/nianticproject/ingress/common/u/av;->p:I

    .line 73
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Lcom/google/f/f;-><init>()V

    .line 1260
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/av;->o:B

    .line 1310
    iput v0, p0, Lcom/nianticproject/ingress/common/u/av;->p:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/av;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/nianticproject/ingress/common/u/av;->m:F

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/nianticproject/ingress/common/u/av;->j:I

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/u/av;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/at;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->i:Lcom/nianticproject/ingress/common/u/at;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/av;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/av;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/av;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/nianticproject/ingress/common/u/av;->n:F

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/av;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/av;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/av;->l:Z

    return p1
.end method

.method public static c()Lcom/nianticproject/ingress/common/u/av;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/nianticproject/ingress/common/u/av;->a:Lcom/nianticproject/ingress/common/u/av;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    return-object p1
.end method

.method public static u()Lcom/nianticproject/ingress/common/u/aw;
    .locals 1

    .prologue
    .line 1454
    invoke-static {}, Lcom/nianticproject/ingress/common/u/aw;->d()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/google/f/c;
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    .line 1176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1177
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/f/c;->a(Ljava/lang/String;)Lcom/google/f/c;

    move-result-object v0

    .line 1179
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/f/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/f/d;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/u/av;->b()I

    move v1, v2

    .line 1272
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/f/i;

    invoke-virtual {p1, v4, v0}, Lcom/google/f/d;->a(ILcom/google/f/i;)V

    .line 1272
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1275
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/f/d;->a(II)V

    .line 1275
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1278
    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1279
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/f/d;->a(IF)V

    .line 1278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1281
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/f/c;

    invoke-virtual {p1, v6, v0}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1284
    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_4

    .line 1285
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/u/av;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/f/d;->a(IJ)V

    .line 1287
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_5

    .line 1288
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/av;->w()Lcom/google/f/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/c;)V

    .line 1290
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_6

    .line 1291
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->i:Lcom/nianticproject/ingress/common/u/at;

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(ILcom/google/f/i;)V

    .line 1293
    :cond_6
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_7

    .line 1294
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->j:I

    invoke-virtual {p1, v7, v0}, Lcom/google/f/d;->a(II)V

    .line 1296
    :cond_7
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 1297
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/u/av;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IZ)V

    .line 1299
    :cond_8
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 1300
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/u/av;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IZ)V

    .line 1302
    :cond_9
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    .line 1303
    const/16 v0, 0xb

    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->m:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 1305
    :cond_a
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 1306
    const/16 v0, 0xc

    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->n:F

    invoke-virtual {p1, v0, v1}, Lcom/google/f/d;->a(IF)V

    .line 1308
    :cond_b
    return-void
.end method

.method public final b()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1312
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->p:I

    .line 1313
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1377
    :goto_0
    return v0

    :cond_0
    move v1, v2

    move v3, v2

    .line 1316
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/f/i;

    invoke-static {v5, v0}, Lcom/google/f/d;->b(ILcom/google/f/i;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    move v4, v2

    .line 1322
    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/f/d;->c(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 1322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1326
    :cond_2
    add-int v0, v3, v4

    .line 1327
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1330
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1332
    add-int/2addr v0, v1

    .line 1333
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v3, v0, v1

    move v1, v2

    .line 1337
    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/f/c;

    invoke-static {v0}, Lcom/google/f/d;->a(Lcom/google/f/c;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1337
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    .line 1341
    :cond_3
    add-int v0, v3, v1

    .line 1342
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1344
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_4

    .line 1345
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/u/av;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/f/d;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1348
    :cond_4
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1349
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/av;->w()Lcom/google/f/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1352
    :cond_5
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 1353
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/nianticproject/ingress/common/u/av;->i:Lcom/nianticproject/ingress/common/u/at;

    invoke-static {v1, v2}, Lcom/google/f/d;->b(ILcom/google/f/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1356
    :cond_6
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_7

    .line 1357
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->j:I

    invoke-static {v6, v1}, Lcom/google/f/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1360
    :cond_7
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    .line 1361
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/u/av;->k:Z

    invoke-static {v1}, Lcom/google/f/d;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1364
    :cond_8
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 1365
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/u/av;->l:Z

    invoke-static {v1}, Lcom/google/f/d;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1368
    :cond_9
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_a

    .line 1369
    const/16 v1, 0xb

    iget v2, p0, Lcom/nianticproject/ingress/common/u/av;->m:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1372
    :cond_a
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b

    .line 1373
    const/16 v1, 0xc

    iget v2, p0, Lcom/nianticproject/ingress/common/u/av;->n:F

    invoke-static {v1}, Lcom/google/f/d;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1376
    :cond_b
    iput v0, p0, Lcom/nianticproject/ingress/common/u/av;->p:I

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1148
    iget v1, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1151
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/u/av;->g:J

    return-wide v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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
    .line 1161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    .line 1162
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1163
    check-cast v0, Ljava/lang/String;

    .line 1171
    :goto_0
    return-object v0

    .line 1165
    :cond_0
    check-cast v0, Lcom/google/f/c;

    .line 1167
    invoke-virtual {v0}, Lcom/google/f/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-static {v0}, Lcom/google/f/h;->a(Lcom/google/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/av;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1171
    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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

.method public final i()Lcom/nianticproject/ingress/common/u/at;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/av;->i:Lcom/nianticproject/ingress/common/u/at;

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 1200
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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

.method public final k()I
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->j:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 1210
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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

.method public final m()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/u/av;->k:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 1220
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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

.method public final o()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/u/av;->l:Z

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 1230
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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
    .line 1233
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->m:F

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 1240
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->b:I

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
    .line 1243
    iget v0, p0, Lcom/nianticproject/ingress/common/u/av;->n:F

    return v0
.end method

.method public final t()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1262
    iget-byte v1, p0, Lcom/nianticproject/ingress/common/u/av;->o:B

    .line 1263
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1266
    :goto_0
    return v0

    .line 1263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1265
    :cond_1
    iput-byte v0, p0, Lcom/nianticproject/ingress/common/u/av;->o:B

    goto :goto_0
.end method

.method public final v()Lcom/nianticproject/ingress/common/u/aw;
    .locals 1

    .prologue
    .line 1459
    invoke-static {}, Lcom/nianticproject/ingress/common/u/aw;->d()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/u/aw;->a(Lcom/nianticproject/ingress/common/u/av;)Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method
