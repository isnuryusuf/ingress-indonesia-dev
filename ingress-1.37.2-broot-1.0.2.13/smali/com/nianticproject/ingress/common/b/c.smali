.class public final Lcom/nianticproject/ingress/common/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:Lcom/nianticproject/ingress/common/b/a;

.field private static final c:Lcom/nianticproject/ingress/common/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/b/j",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/b/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 185
    new-instance v0, Lcom/nianticproject/ingress/common/b/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/b/j;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/b/c;->c:Lcom/nianticproject/ingress/common/b/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1
    .parameter

    .prologue
    .line 208
    invoke-static {}, Lcom/nianticproject/ingress/common/b/c;->b()Lcom/nianticproject/ingress/common/b/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/b/a;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/badlogic/gdx/graphics/Color;
    .locals 5
    .parameter

    .prologue
    const/high16 v3, 0x437f

    .line 651
    const/high16 v0, 0xff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 652
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 653
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 654
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v3
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/TextureData;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->b(Lcom/badlogic/gdx/graphics/TextureData;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Texture;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 230
    :try_start_0
    const-string/jumbo v1, "AssetUtils.getTexture"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "-useMipMaps"

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    .line 232
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const-string/jumbo v0, "failed to load Texture=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 230
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const-string/jumbo v1, "failed to load TextureRegion=%s from Skin=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/az;

    const-string/jumbo v1, "white"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-static {p1}, Lcom/nianticproject/ingress/common/b/c;->a(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/az;

    const-string/jumbo v1, "white"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/az;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    new-instance v0, Lcom/nianticproject/ingress/common/b/n;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/b/n;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/common/b/n;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/nianticproject/ingress/common/b/n;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 365
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aW:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 367
    instance-of v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/l;

    check-cast p0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/l;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/ui/widget/k;)V

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/j;

    invoke-direct {v0, p0, v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/j;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/ui/widget/k;)V

    goto :goto_0
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Texture;I)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 665
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 666
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 667
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinWidth(F)V

    .line 668
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->setMinHeight(F)V

    .line 669
    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/b/j;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nianticproject/ingress/common/b/c;->c:Lcom/nianticproject/ingress/common/b/j;

    return-object v0
.end method

.method public static a([F[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/j/a;->a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;

    move-result-object v0

    .line 546
    return-object v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    sget-object v0, Lcom/nianticproject/ingress/common/b/c;->b:Lcom/nianticproject/ingress/common/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempt to initialize Assets twice, which is not supported yet. This may happen if GDX recreates the Application (e.g, on orientation change)."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 196
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/b/a;

    sput-object v0, Lcom/nianticproject/ingress/common/b/c;->b:Lcom/nianticproject/ingress/common/b/a;

    .line 197
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/TextureData;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/nianticproject/ingress/common/b/o",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v8

    new-instance v0, Lcom/nianticproject/ingress/common/b/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/b/d;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 426
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;Lcom/nianticproject/ingress/common/b/o;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;",
            "Lcom/nianticproject/ingress/common/b/o",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/b/f;

    invoke-direct {v1, p1, p2, p0}, Lcom/nianticproject/ingress/common/b/f;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;Lcom/nianticproject/ingress/common/b/o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 526
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/b/o;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/j/c;",
            "Lcom/nianticproject/ingress/common/b/o",
            "<",
            "Lcom/nianticproject/ingress/common/j/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 620
    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v8, p1, Lcom/nianticproject/ingress/common/j/c;->e:Lcom/nianticproject/ingress/common/j/b;

    if-nez v8, :cond_1

    move-object v0, v1

    .line 630
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/b/i;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/nianticproject/ingress/common/b/i;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/o;Lcom/nianticproject/ingress/common/j/c;Lcom/nianticproject/ingress/common/j/ab;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v2, v8, Lcom/nianticproject/ingress/common/j/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "opaque"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v7, Lcom/nianticproject/ingress/common/j/ah;

    invoke-direct {v7, p0}, Lcom/nianticproject/ingress/common/j/ah;-><init>(Ljava/lang/String;)V

    :goto_2
    if-nez v7, :cond_3

    sget-object v2, Lcom/nianticproject/ingress/common/b/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Material name not found: %s. While loading %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v8, Lcom/nianticproject/ingress/common/j/b;->a:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v7, v1

    goto :goto_2

    :cond_3
    iget-object v1, v8, Lcom/nianticproject/ingress/common/j/b;->b:Ljava/lang/String;

    new-instance v2, Lcom/nianticproject/ingress/common/b/g;

    invoke-direct {v2, v7}, Lcom/nianticproject/ingress/common/b/g;-><init>(Lcom/nianticproject/ingress/common/j/ab;)V

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    iget-object v1, v8, Lcom/nianticproject/ingress/common/j/b;->c:[Ljava/lang/String;

    if-eqz v1, :cond_4

    move v6, v0

    :goto_3
    iget-object v0, v8, Lcom/nianticproject/ingress/common/j/b;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    iget-object v0, v8, Lcom/nianticproject/ingress/common/j/b;->c:[Ljava/lang/String;

    aget-object v1, v0, v6

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v9, Lcom/nianticproject/ingress/common/b/c;->c:Lcom/nianticproject/ingress/common/b/j;

    new-instance v0, Lcom/nianticproject/ingress/common/b/e;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/b/e;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {v9, v1, v0}, Lcom/nianticproject/ingress/common/b/j;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/k;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/b/h;

    invoke-direct {v1, p0, v8, v6, v7}, Lcom/nianticproject/ingress/common/b/h;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/b;ILcom/nianticproject/ingress/common/j/ab;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move-object v0, v7

    goto :goto_1
.end method

.method private static b(Lcom/badlogic/gdx/graphics/TextureData;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 436
    move v2, v4

    move-object v1, v0

    .line 443
    :cond_0
    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v2

    move-object v2, v1

    move v1, v9

    .line 449
    :goto_0
    if-eqz v2, :cond_2

    .line 457
    instance-of v5, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    if-eqz v5, :cond_1

    .line 458
    check-cast p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->getFileHandle()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 460
    :cond_1
    sget-object v5, Lcom/nianticproject/ingress/common/b/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v6, "Exception in create texture. file(%s) try(%d) status(%s) texture(%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x3

    aput-object v3, v7, v0

    invoke-virtual {v5, v2, v6, v7}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    if-nez v3, :cond_2

    .line 465
    throw v2

    .line 445
    :catch_0
    move-exception v1

    .line 447
    add-int/lit8 v2, v2, 0x1

    .line 448
    if-lt v2, v8, :cond_0

    move-object v3, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_0

    .line 469
    :cond_2
    return-object v3
.end method

.method public static b(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 1
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 389
    :try_start_0
    const-string/jumbo v0, "AssetUtils.prepareTextureData-"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/common/b/c;->c(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private static b()Lcom/nianticproject/ingress/common/b/a;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/nianticproject/ingress/common/b/c;->b:Lcom/nianticproject/ingress/common/b/a;

    const-string/jumbo v1, "Assets has not been initialized yet."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/b/a;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 251
    :try_start_0
    const-string/jumbo v1, "AssetUtils.getTextureData"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "-useMipMaps"

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    .line 253
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    .line 251
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
    .locals 4
    .parameter

    .prologue
    .line 261
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    .line 262
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 381
    invoke-static {}, Lcom/nianticproject/ingress/common/b/c;->b()Lcom/nianticproject/ingress/common/b/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/b/a;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/nianticproject/ingress/common/j/c;
    .locals 2
    .parameter

    .prologue
    .line 533
    :try_start_0
    const-string/jumbo v0, "prepareMeshData("

    const-string/jumbo v1, ")"

    invoke-static {v0, p0, v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {p0}, Lcom/nianticproject/ingress/common/j/a;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/j/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
