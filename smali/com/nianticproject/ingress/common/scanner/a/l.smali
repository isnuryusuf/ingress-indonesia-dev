.class public final Lcom/nianticproject/ingress/common/scanner/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/a/af;


# static fields
.field static final a:Lcom/badlogic/gdx/graphics/Color;

.field static b:Lcom/badlogic/gdx/graphics/VertexAttributes;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private final d:I

.field private final e:[S

.field private final f:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x3f4ccccd

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f59999a

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 138
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->d:I

    .line 139
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    .line 142
    array-length v0, p3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/a/l;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V

    return-void
.end method

.method static a()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/l;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v1, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string/jumbo v6, "a_color"

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/l;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 129
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/l;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method private static a(Ljava/nio/FloatBuffer;FFFFFFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    sub-float v0, p7, p5

    .line 249
    sub-float v1, p4, p6

    .line 250
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 251
    div-float v2, p1, v2

    .line 252
    mul-float/2addr v0, v2

    .line 253
    mul-float/2addr v1, v2

    .line 255
    add-float v2, p2, v0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 256
    add-float v2, p3, v1

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 257
    invoke-virtual {p0, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 258
    sub-float v0, p2, v0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 259
    sub-float v0, p3, v1

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 260
    invoke-virtual {p0, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 261
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 152
    iget-short v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 242
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/l;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v3, v1, 0x4

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    iget-short v2, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 159
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 162
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v10, v1

    .line 163
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    iget-short v2, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 164
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 162
    :cond_3
    const/4 v1, 0x2

    move v10, v1

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->d:I

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(I)Lcom/nianticproject/ingress/common/q/a/t;

    move-result-object v4

    .line 168
    const/high16 v2, 0x4000

    .line 169
    const/high16 v1, -0x4080

    .line 170
    if-eqz v4, :cond_5

    .line 171
    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/q/a/t;->b()Lcom/nianticproject/ingress/common/q/a/u;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_5

    .line 173
    iget v1, v4, Lcom/nianticproject/ingress/common/q/a/u;->b:I

    int-to-float v2, v1

    .line 174
    iget v1, v4, Lcom/nianticproject/ingress/common/q/a/u;->a:I

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(I)F

    move-result v1

    .line 178
    :cond_5
    const/high16 v4, -0x4080

    cmpl-float v4, v1, v4

    if-nez v4, :cond_6

    .line 179
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1, v4, v5}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(FFF)F

    move-result v1

    .line 181
    :cond_6
    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    sget-object v6, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v5, v6

    sget-object v6, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 182
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3ec28f5c

    const v5, 0x3f147ae1

    const v6, 0x3f147ae1

    const/high16 v7, 0x3f80

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    .line 202
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    div-int/2addr v1, v3

    int-to-short v11, v1

    .line 203
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    array-length v1, v1

    div-int/lit8 v13, v1, 0x2

    .line 204
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a()F

    move-result v14

    .line 206
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    const/4 v3, 0x0

    aget-short v1, v1, v3

    rsub-int v1, v1, 0x1000

    int-to-float v1, v1

    mul-float v3, v1, v14

    .line 207
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    const/4 v4, 0x1

    aget-short v1, v1, v4

    int-to-float v1, v1

    mul-float v4, v1, v14

    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    const/4 v8, 0x0

    .line 217
    const/4 v1, 0x1

    move v12, v1

    :goto_1
    if-ge v12, v13, :cond_7

    .line 221
    mul-int/lit8 v1, v12, 0x2

    .line 222
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    aget-short v5, v5, v1

    rsub-int v5, v5, 0x1000

    int-to-float v5, v5

    mul-float v7, v5, v14

    .line 223
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->e:[S

    add-int/lit8 v1, v1, 0x1

    aget-short v1, v5, v1

    int-to-float v1, v1

    mul-float v8, v1, v14

    move-object/from16 v1, p1

    move v5, v3

    move v6, v4

    .line 226
    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/a/l;->a(Ljava/nio/FloatBuffer;FFFFFFFF)V

    .line 217
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    move v6, v4

    move v5, v3

    move v4, v8

    move v3, v7

    goto :goto_1

    :cond_7
    move-object/from16 v1, p1

    .line 233
    invoke-static/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/a/l;->a(Ljava/nio/FloatBuffer;FFFFFFFF)V

    .line 235
    if-lez v10, :cond_8

    .line 236
    add-int/lit8 v1, v11, -0x1

    int-to-short v1, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 239
    :cond_8
    const/4 v1, 0x0

    move v2, v11

    :goto_2
    iget-short v3, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    if-ge v1, v3, :cond_0

    .line 240
    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 239
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2
.end method

.method public final b()S
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/l;->f:S

    return v0
.end method
