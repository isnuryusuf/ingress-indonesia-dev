.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field addedRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field image:Lcom/badlogic/gdx/graphics/Pixmap;

.field rects:Lcom/badlogic/gdx/utils/OrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->this$0:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method
