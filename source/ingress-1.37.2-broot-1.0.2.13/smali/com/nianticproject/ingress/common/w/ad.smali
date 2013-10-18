.class public final Lcom/nianticproject/ingress/common/w/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Lcom/nianticproject/ingress/common/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/b/j",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/w/ad;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/ad;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/b/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/b/j;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/w/ad;->b:Lcom/nianticproject/ingress/common/b/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {p0, p1, p2}, La;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/nianticproject/ingress/common/w/ad;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Shader failed to compile: shaderName %s\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/w/ad;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method public static a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    .line 110
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    .line 111
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    .line 112
    const-string/jumbo v4, "u_texCoordBase"

    invoke-virtual {p0, v4, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 113
    const-string/jumbo v4, "u_texCoordExtent"

    sub-float v0, v2, v0

    sub-float v1, v3, v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 114
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 72
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v0, p3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/w/ah",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/nianticproject/ingress/common/w/ad;->b:Lcom/nianticproject/ingress/common/b/j;

    new-instance v1, Lcom/nianticproject/ingress/common/w/af;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/w/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/nianticproject/ingress/common/b/j;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/k;)V

    .line 194
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/w/ag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Fetch_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/nianticproject/ingress/common/w/ag;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 201
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/w/ah",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p1}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p0, v0, v1, p2}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/w/ah",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v6

    new-instance v0, Lcom/nianticproject/ingress/common/w/ae;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/w/ae;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 144
    return-void
.end method

.method static synthetic b()Lcom/nianticproject/ingress/common/b/j;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/w/ad;->b:Lcom/nianticproject/ingress/common/b/j;

    return-object v0
.end method
