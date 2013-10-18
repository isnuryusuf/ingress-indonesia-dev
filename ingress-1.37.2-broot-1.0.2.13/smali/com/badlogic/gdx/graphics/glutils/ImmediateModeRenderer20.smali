.class public Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;


# instance fields
.field private final colorOffset:I

.field private final maxVertices:I

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final normalOffset:I

.field private numSetTexCoords:I

.field private final numTexCoords:I

.field private numVertices:I

.field private ownsShader:Z

.field private primitiveType:I

.field private final projModelView:Lcom/badlogic/gdx/math/Matrix4;

.field private shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final texCoordOffset:I

.field private vertexIdx:I

.field private final vertexSize:I

.field private final vertices:[F


# direct methods
.method public constructor <init>(IZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 57
    return-void
.end method

.method public constructor <init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    .line 60
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    .line 61
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    .line 62
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 64
    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 65
    new-instance v2, Lcom/badlogic/gdx/graphics/Mesh;

    invoke-direct {v2, v1, p1, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v0, 0x4

    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    .line 74
    return-void

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_1
.end method

.method public constructor <init>(ZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const/16 v1, 0x1388

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 52
    return-void
.end method

.method private buildVertexAttributes(ZZI)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 77
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 78
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v1, v0, v6, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 79
    if-eqz p1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_normal"

    invoke-direct {v1, v7, v6, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string/jumbo v5, "a_color"

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    move v1, v0

    .line 81
    :goto_0
    if-ge v1, p3, :cond_2

    .line 82
    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "a_texCoord"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v7, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v3, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move v1, v0

    .line 85
    :goto_1
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_3

    .line 86
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v0, v3, v1

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 87
    :cond_3
    return-object v3
.end method

.method public static createDefaultShader(ZZI)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createVertexShader(ZZI)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->createFragmentShader(ZZI)Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static createFragmentShader(ZZI)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    const-string/jumbo v0, "#ifdef GL_ES\nprecision highp float;\n#endif\n"

    .line 190
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "varying vec4 v_col;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    move v0, v1

    .line 191
    :goto_0
    if-ge v0, p2, :cond_1

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "varying vec2 v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uniform sampler2D u_sampler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "void main() {\n   gl_FragColor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string/jumbo v0, "v_col"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    if-lez p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " * "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_5

    .line 201
    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_4

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " texture2D(u_sampler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",  v_tex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 196
    :cond_3
    const-string/jumbo v0, "vec4(1, 1, 1, 1)"

    goto :goto_1

    .line 204
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " texture2D(u_sampler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",  v_tex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") *"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 208
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method private static createVertexShader(ZZI)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "attribute vec4 a_position;\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string/jumbo v0, "attribute vec3 a_normal;\n"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "attribute vec4 a_color;\n"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 164
    :goto_2
    if-ge v0, p2, :cond_2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "attribute vec2 a_texCoord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "uniform mat4 u_projModelView;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string/jumbo v0, "varying vec4 v_col;\n"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 171
    :goto_4
    if-ge v0, p2, :cond_4

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "varying vec2 v_tex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 169
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    .line 175
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "void main() {\n   gl_Position = u_projModelView * a_position;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_5

    const-string/jumbo v0, "   v_col = a_color;\n"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 178
    :goto_6
    if-ge v0, p2, :cond_6

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   v_tex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = a_texCoord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 175
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_5

    .line 182
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/math/Matrix4;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    .line 99
    return-void
.end method

.method public color(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->colorOffset:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v2

    aput v2, v0, v1

    .line 103
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 157
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_projModelView"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->projModelView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    move v0, v1

    .line 134
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numTexCoords:I

    if-ge v0, v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "u_sampler"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->primitiveType:I

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 140
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 141
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 142
    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    goto :goto_0
.end method

.method public getMaxVertices()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->maxVertices:I

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    return v0
.end method

.method public normal(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->normalOffset:I

    add-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 116
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v0, v0, 0x2

    aput p3, v1, v0

    .line 117
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->ownsShader:Z

    .line 94
    return-void
.end method

.method public texCoord(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->texCoordOffset:I

    add-int/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    .line 108
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 110
    return-void
.end method

.method public vertex(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 121
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    aput p1, v1, v0

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertices:[F

    add-int/lit8 v0, v0, 0x2

    aput p3, v1, v0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numSetTexCoords:I

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->vertexIdx:I

    .line 127
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;->numVertices:I

    .line 128
    return-void
.end method
