.class final Lcom/nianticproject/ingress/common/j/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field final a:I

.field final b:I

.field final c:Z

.field final synthetic d:Lcom/nianticproject/ingress/common/j/av;

.field private final e:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/ay;->d:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 68
    iput p3, p0, Lcom/nianticproject/ingress/common/j/ay;->a:I

    .line 69
    iput p4, p0, Lcom/nianticproject/ingress/common/j/ay;->b:I

    .line 70
    iput-boolean p5, p0, Lcom/nianticproject/ingress/common/j/ay;->c:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final consumeCompressedData()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public final disposePixmap()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public final getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isManaged()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrepared()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ay;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prepare()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final useMipMaps()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
