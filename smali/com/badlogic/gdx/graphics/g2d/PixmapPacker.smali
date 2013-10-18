.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

.field disposed:Z

.field final duplicateBorder:Z

.field final padding:I

.field final pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final pageHeight:I

.field final pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 139
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 140
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 141
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 142
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 143
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    .line 145
    return-void
.end method

.method private insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    :goto_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v1, :cond_1

    .line 220
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v0

    .line 231
    :cond_0
    :goto_1
    return-object v0

    .line 227
    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    move-object v0, p1

    goto :goto_1

    .line 231
    :cond_2
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 233
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 234
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 236
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v1, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 237
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v2, v2

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 239
    if-le v1, v2, :cond_3

    .line 240
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 241
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 242
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 243
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 245
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 246
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 247
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 248
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 261
    :goto_2
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    goto/16 :goto_0

    .line 250
    :cond_3
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 251
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 252
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 253
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 255
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 256
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 257
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 258
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_2
.end method

.method private newPage()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 210
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    .line 211
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 212
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    move v2, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>(IIIILcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 213
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 215
    iput-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 216
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 304
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    monitor-exit p0

    return-void
.end method

.method public duplicateBoarder()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-object v7, v0

    .line 318
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-eqz v1, :cond_0

    .line 319
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$1;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;

    iget-object v3, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v2, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 326
    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 328
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 330
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    move-object v6, v0

    .line 331
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v3, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 332
    invoke-virtual {v9, v8, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 336
    :cond_1
    monitor-exit p0

    return-object v9
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 3
    .parameter

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 288
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-eqz v1, :cond_0

    .line 291
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPageHeight()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 276
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_0

    .line 279
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 206
    :goto_0
    monitor-exit p0

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Key with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is already in map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v3, :cond_3

    :goto_1
    add-int/2addr v0, v2

    .line 160
    shl-int/lit8 v0, v0, 0x1

    .line 162
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_4

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "page size for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' to small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 159
    goto :goto_1

    .line 164
    :cond_4
    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v1

    .line 167
    if-nez v1, :cond_5

    .line 168
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :cond_5
    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    .line 173
    new-instance v10, Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v10, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 174
    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 175
    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 176
    shr-int/lit8 v0, v0, 0x1

    .line 177
    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 178
    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1, v10}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 183
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 184
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 187
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    add-int/lit8 v3, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    add-int/lit8 v2, v1, -0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget v1, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v10

    .line 206
    goto/16 :goto_0
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-object v7, v0

    .line 346
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v1, :cond_2

    .line 347
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    .line 348
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;

    iget-object v3, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$ManagedPixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 355
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 357
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 358
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    move-object v6, v0

    .line 359
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v3, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 360
    invoke-virtual {p1, v8, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 362
    :cond_1
    :try_start_1
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    .line 366
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 367
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 368
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    move-object v6, v0

    .line 369
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v3, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 370
    invoke-virtual {p1, v8, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    goto :goto_2

    .line 372
    :cond_3
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_4
    monitor-exit p0

    return-void
.end method
