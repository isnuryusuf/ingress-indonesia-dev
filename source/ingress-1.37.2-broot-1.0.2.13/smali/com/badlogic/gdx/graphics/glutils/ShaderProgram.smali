.class public final Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord"

.field public static pedantic:Z

.field private static final shaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private final attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buffer:Ljava/nio/ByteBuffer;

.field private floatBuffer:Ljava/nio/FloatBuffer;

.field private fragmentShaderHandle:I

.field private final fragmentShaderSource:Ljava/lang/String;

.field private intBuffer:Ljava/nio/IntBuffer;

.field private invalidated:Z

.field private isCompiled:Z

.field private log:Ljava/lang/String;

.field protected final matrix:Ljava/nio/FloatBuffer;

.field params:Ljava/nio/IntBuffer;

.field private program:I

.field private refCount:I

.field type:Ljava/nio/IntBuffer;

.field private final uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private uniformNames:[Ljava/lang/String;

.field private vertexShaderHandle:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 214
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 229
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 232
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 259
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    .line 260
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 261
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->intBuffer:Ljava/nio/IntBuffer;

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->refCount:I

    .line 991
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    .line 992
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    .line 271
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vertex shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fragment shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    .line 275
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    .line 276
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributes()V

    .line 281
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniforms()V

    .line 282
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 284
    :cond_2
    return-void
.end method

.method private static addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 932
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 933
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 934
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    return-void
.end method

.method private checkManaged()V
    .locals 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 929
    :cond_0
    return-void
.end method

.method public static clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 956
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    return-void
.end method

.method private compileShaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    .line 296
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    .line 297
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    .line 299
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->linkProgram()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    .line 304
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    if-ne v0, v1, :cond_2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    goto :goto_0
.end method

.method private ensureBufferCapacity(I)V
    .locals 1
    .parameter

    .prologue
    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 985
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    .line 986
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 987
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->intBuffer:Ljava/nio/IntBuffer;

    .line 989
    :cond_1
    return-void
.end method

.method private fetchAttributes()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1020
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 1021
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v3, 0x8b89

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 1022
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 1024
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    move v0, v1

    .line 1026
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1027
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 1028
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/16 v4, 0x100

    invoke-virtual {v3, v1, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 1029
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 1030
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 1031
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    .line 1032
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 1033
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 1034
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 1026
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    return-void
.end method

.method private fetchUniforms()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 995
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 996
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v3, 0x8b86

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 997
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 999
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    move v1, v2

    .line 1001
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 1003
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/16 v4, 0x100

    invoke-virtual {v0, v2, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 1004
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 1005
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v4

    .line 1006
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1009
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    .line 1010
    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-direct {v0, p0, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;-><init>(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/lang/String;I)V

    .line 1012
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->fetchLocation(I)V

    .line 1001
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1017
    :cond_1
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    const-string/jumbo v0, "Managed shaders/app: { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 964
    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 965
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 967
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUniformLocationOrThrow(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    .line 1086
    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown uniform in shader program: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->getLocation()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 940
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 941
    return-void
.end method

.method public static invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .parameter

    .prologue
    .line 945
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    if-nez v0, :cond_1

    .line 953
    :cond_0
    return-void

    .line 947
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 948
    if-eqz v0, :cond_0

    .line 950
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 951
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidate()V

    .line 950
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private linkProgram()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 342
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v2

    .line 343
    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v1

    .line 344
    if-nez v1, :cond_0

    .line 365
    :goto_0
    return v0

    .line 346
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 347
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 348
    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 350
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 351
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 354
    const v4, 0x8b82

    invoke-interface {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 356
    if-nez v2, :cond_1

    .line 360
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 365
    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 314
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v2

    .line 315
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 317
    invoke-interface {v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v1

    .line 318
    if-nez v1, :cond_0

    .line 338
    :goto_0
    return v0

    .line 320
    :cond_0
    invoke-interface {v2, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 321
    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 322
    const v4, 0x8b81

    invoke-interface {v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 324
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 325
    if-nez v3, :cond_1

    .line 332
    invoke-interface {v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0
.end method


# virtual methods
.method public final begin()V
    .locals 2

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 885
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 886
    return-void
.end method

.method public final disableVertexAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 909
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    .line 910
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 896
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 897
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 898
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 899
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 900
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 901
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 902
    :cond_0
    return-void
.end method

.method public final enableVertexAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 919
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    .line 920
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 922
    :goto_0
    return-void

    .line 921
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public final end()V
    .locals 2

    .prologue
    .line 891
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 892
    return-void
.end method

.method public final getAttributeLocation(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1057
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    .line 1058
    if-ne v1, v0, :cond_0

    .line 1061
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final getAttributeType(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1047
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    .line 1048
    if-ne v0, v1, :cond_0

    .line 1049
    const/4 v0, 0x0

    .line 1051
    :cond_0
    return v0
.end method

.method public final getAttributes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public final getLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniformHandle(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;
    .locals 3
    .parameter

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    .line 1106
    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown uniform in shader program: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_0
    return-object v0
.end method

.method public final getUniformLocation(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    .line 1081
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->getLocation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getUniformType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    .line 1074
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getUniforms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    return-object v0
.end method

.method public final hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasUniform(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformHandles:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCompiled()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return v0
.end method

.method public final setAttributef(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 980
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 981
    return-void
.end method

.method public final setOptUniform1fv(Ljava/lang/String;[FII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 711
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0

    .line 712
    :cond_0
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 713
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 714
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 715
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, p4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 716
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniform2fv(Ljava/lang/String;[FII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 725
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    .line 726
    :cond_0
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 727
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 728
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 729
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 730
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniform3fv(Ljava/lang/String;[FII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 739
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 744
    :goto_0
    return v0

    .line 740
    :cond_0
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 741
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 742
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 743
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 744
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniform4fv(Ljava/lang/String;[FII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 753
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 758
    :goto_0
    return v0

    .line 754
    :cond_0
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 755
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 756
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 757
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)Z

    move-result v0

    return v0
.end method

.method public final setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 806
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 811
    :goto_0
    return v0

    .line 807
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Matrix3;->getValues()[F

    move-result-object v3

    .line 808
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 809
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    array-length v5, v3

    invoke-static {v3, v4, v5, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 810
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v2, v1, p3, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    move v0, v1

    .line 811
    goto :goto_0
.end method

.method public final setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)Z

    move-result v0

    return v0
.end method

.method public final setOptUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    .line 780
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 784
    :goto_0
    return v0

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 782
    iget-object v3, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    iget-object v5, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 783
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v2, v1, p3, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    move v0, v1

    .line 784
    goto :goto_0
.end method

.method public final setOptUniformf(Ljava/lang/String;F)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 655
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 656
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 657
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformf(Ljava/lang/String;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 669
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 671
    :goto_0
    return v0

    .line 670
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 671
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformf(Ljava/lang/String;FFF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 684
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformf(Ljava/lang/String;FFFF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 700
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    .line 701
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 702
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 842
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformf(Ljava/lang/String;FFFF)Z

    move-result v0

    return v0
.end method

.method public final setOptUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 822
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformf(Ljava/lang/String;FF)Z

    move-result v0

    return v0
.end method

.method public final setOptUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 832
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setOptUniformf(Ljava/lang/String;FFF)Z

    move-result v0

    return v0
.end method

.method public final setOptUniformi(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 597
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 599
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformi(Ljava/lang/String;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 611
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    .line 612
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformi(Ljava/lang/String;III)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 626
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    .line 627
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 628
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setOptUniformi(Ljava/lang/String;IIII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 642
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 644
    :goto_0
    return v0

    .line 643
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 644
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setUniform1fv(Ljava/lang/String;[FII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 475
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 476
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 477
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 478
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, p4, v2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 479
    return-void
.end method

.method public final setUniform2fv(Ljava/lang/String;[FII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 486
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 487
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 488
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 489
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 490
    return-void
.end method

.method public final setUniform3fv(Ljava/lang/String;[FII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 497
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 498
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 499
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 500
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 501
    return-void
.end method

.method public final setUniform4fv(Ljava/lang/String;[FII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 508
    shl-int/lit8 v1, p4, 0x2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->ensureBufferCapacity(I)V

    .line 509
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 510
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p2, v1, p4, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 511
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    div-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 512
    return-void
.end method

.method public final setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V

    .line 543
    return-void
.end method

.method public final setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 553
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Matrix3;->getValues()[F

    move-result-object v1

    .line 554
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 555
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 556
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, p3, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 557
    return-void
.end method

.method public final setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 521
    return-void
.end method

.method public final setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 532
    iget-object v1, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    iget-object v3, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 533
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v0, v2, p3, v3}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 534
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 431
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 432
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 442
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 443
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 454
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 455
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 467
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 468
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 584
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 585
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 566
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 567
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 575
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 576
    return-void
.end method

.method public final setUniformi(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 385
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 386
    return-void
.end method

.method public final setUniformi(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 396
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 397
    return-void
.end method

.method public final setUniformi(Ljava/lang/String;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 408
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 409
    return-void
.end method

.method public final setUniformi(Ljava/lang/String;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniformLocationOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 421
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 422
    return-void
.end method

.method public final setVertexAttribute(Ljava/lang/String;IIZII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 876
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 877
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    goto :goto_0
.end method

.method public final setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 859
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 860
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 861
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0
.end method
