.class final Lcom/nianticproject/ingress/common/scanner/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/a/af;


# static fields
.field static final a:Lcom/badlogic/gdx/graphics/Color;

.field static b:Lcom/badlogic/gdx/graphics/VertexAttributes;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private final d:S

.field private final e:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x3f666666

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/g;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;[S)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 100
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->d:S

    .line 101
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->e:[S

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;[SB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/a/g;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;[S)V

    return-void
.end method

.method static a()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/g;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x2

    const-string/jumbo v4, "a_position"

    invoke-direct {v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/g;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 95
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/g;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    iget-short v1, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->d:S

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    iget-short v1, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->d:S

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 116
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-short v1, v0

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->a()F

    move-result v3

    .line 121
    const/4 v0, 0x0

    :goto_0
    iget-short v2, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->d:S

    if-ge v0, v2, :cond_2

    .line 122
    mul-int/lit8 v2, v0, 0x2

    .line 123
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->e:[S

    aget-short v4, v4, v2

    rsub-int v4, v4, 0x1000

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 124
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->e:[S

    add-int/lit8 v2, v2, 0x1

    aget-short v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 125
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 126
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 127
    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 121
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 129
    :cond_2
    return-void
.end method

.method public final b()S
    .locals 1

    .prologue
    .line 106
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/g;->d:S

    return v0
.end method
