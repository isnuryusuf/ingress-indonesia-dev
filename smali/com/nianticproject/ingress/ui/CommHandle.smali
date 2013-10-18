.class public Lcom/nianticproject/ingress/ui/CommHandle;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Path;

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    .line 83
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    .line 85
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    .line 86
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    const v2, 0x7f07001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    const v2, 0x7f070024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    .line 98
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    const v2, 0x7f070011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    const v1, 0x7f02006a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    .line 83
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    .line 85
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    .line 86
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    const v2, 0x7f07001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    const v2, 0x7f070024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    .line 98
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    const v2, 0x7f070011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    const v1, 0x7f02006a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    .line 83
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    .line 85
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    .line 86
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    const v2, 0x7f07001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    const v2, 0x7f070024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    .line 98
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    const v2, 0x7f070011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    const v1, 0x7f02006a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/CommHandle;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredWidth()I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredHeight()I

    move-result v1

    .line 218
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->b()I

    move-result v2

    .line 219
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    sub-int v3, v2, v3

    .line 221
    iget v4, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    div-int/lit8 v4, v4, 0x2

    .line 226
    iget v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->b:I

    sub-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 228
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    .line 229
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    int-to-float v7, v1

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    int-to-float v7, v7

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    int-to-float v7, v7

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 236
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    .line 237
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    int-to-float v7, v0

    int-to-float v1, v1

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 238
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v6, v4

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    int-to-float v1, v2

    int-to-float v6, v4

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    int-to-float v1, v3

    int-to-float v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    int-to-float v1, v5

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    sub-int v0, v5, v0

    .line 244
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    sub-int v1, v2, v1

    .line 245
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    mul-int/2addr v3, v0

    div-int/2addr v3, v5

    .line 247
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    .line 248
    iget-object v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    int-to-float v6, v4

    int-to-float v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    iget-object v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    iget-object v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    int-to-float v6, v1

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    iget-object v4, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    sub-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {v4, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 255
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->m:I

    .line 256
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->l:I

    .line 257
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/ui/CommHandle;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    return v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    if-ne v0, p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/ui/l;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/ui/l;-><init>(Lcom/nianticproject/ingress/ui/CommHandle;I)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CommHandle;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->b()I

    move-result v6

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    int-to-float v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x5

    .line 146
    int-to-float v2, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->c()V

    .line 158
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->k:I

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->p:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->h:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommHandle;->l:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/ui/CommHandle;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->a:I

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->j:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommHandle;->i:I

    add-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommHandle;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 116
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->b()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/ui/CommHandle;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommHandle;->n:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommHandle;->c()V

    .line 125
    :cond_0
    return-void
.end method
