.class public Lcom/nianticproject/ingress/common/j/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private final c:Lcom/badlogic/gdx/graphics/GL20;

.field private d:J

.field private e:J

.field private final f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/j/z;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/y;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/y;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss:SSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/y;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 6
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/j/y;->e:J

    .line 162
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/GL20;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/j/y;->f:J

    .line 165
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    .line 166
    invoke-static {}, Lcom/nianticproject/ingress/common/j/z;->values()[Lcom/nianticproject/ingress/common/j/z;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 167
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v4

    .line 168
    iget-object v5, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 72
    invoke-virtual {p3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 73
    invoke-direct {p0, p1, v1, p4}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;IZ)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/j/z;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    if-eqz p3, :cond_1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v0, "Allocation already exists handle %d type %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/z;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/nianticproject/ingress/common/j/y;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "allocated"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 147
    :cond_1
    if-nez v1, :cond_2

    .line 148
    const-string/jumbo v0, "De-Allocation: not-allocated for handle %d type %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/z;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/nianticproject/ingress/common/j/y;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1120
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/u;->a(Ljava/lang/String;)V

    .line 1121
    invoke-static {v8}, Lcom/nianticproject/ingress/common/j/aa;->a(Z)V

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/j/y;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1123
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getNativeHeap()J

    move-result-wide v1

    const/high16 v0, 0x42c8

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/j/y;->e:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/j/y;->f:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v1, p0, Lcom/nianticproject/ingress/common/j/y;->e:J

    :cond_0
    :goto_0
    sget-object v3, Lcom/nianticproject/ingress/common/j/y;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "native memory: %3.1fMb (%3.1f%%) shaders: %5d buffers: %5d frame buffers: %5d render buffers: %5d textures: %5d programs: %5d"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    long-to-double v1, v1

    const-wide/high16 v6, 0x4130

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v8

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->a:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->b:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->c:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->d:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->e:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->g:Ljava/util/Map;

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->f:Lcom/nianticproject/ingress/common/j/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/j/y;->d:J

    .line 1126
    :cond_1
    return-void

    .line 1123
    :cond_2
    long-to-double v3, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/j/y;->e:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    double-to-float v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 179
    const-string/jumbo v0, "glActiveTexture"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public glAttachShader(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 442
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 448
    const-string/jumbo v0, "glBindAttribLocation"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 454
    const-string/jumbo v0, "glBindBuffer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 460
    const-string/jumbo v0, "glBindFramebuffer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 466
    const-string/jumbo v0, "glBindRenderbuffer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 185
    const-string/jumbo v0, "glBindTexture"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendColor(FFFF)V

    .line 472
    const-string/jumbo v0, "glBlendColor"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquation(I)V

    .line 478
    const-string/jumbo v0, "glBlendEquation"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquationSeparate(II)V

    .line 484
    const-string/jumbo v0, "glBlendEquationSeparate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 191
    const-string/jumbo v0, "glBlendFunc"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 490
    const-string/jumbo v0, "glBlendFuncSeparate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 496
    const-string/jumbo v0, "glBufferData"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 502
    const-string/jumbo v0, "glBufferSubData"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 2
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 508
    const-string/jumbo v1, "glCheckFramebufferStatus"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 509
    return v0
.end method

.method public glClear(I)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 197
    const-string/jumbo v0, "glClear"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 203
    const-string/jumbo v0, "glClearColor"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearDepthf(F)V

    .line 209
    const-string/jumbo v0, "glClearDepthf"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearStencil(I)V

    .line 215
    const-string/jumbo v0, "glClearStencil"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glColorMask(ZZZZ)V

    .line 221
    const-string/jumbo v0, "glColorMask"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public glCompileShader(I)V
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 515
    const-string/jumbo v0, "glCompileShader"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 229
    const-string/jumbo v0, "glCompressedTexImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
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
    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 237
    const-string/jumbo v0, "glCompressedTexSubImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexImage2D(IIIIIIII)V

    .line 245
    const-string/jumbo v0, "glCopyTexImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 253
    const-string/jumbo v0, "glCopyTexSubImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public glCreateProgram()I
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    .line 521
    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->f:Lcom/nianticproject/ingress/common/j/z;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;IZ)V

    .line 522
    const-string/jumbo v1, "glCreateProgram"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 523
    return v0
.end method

.method public glCreateShader(I)I
    .locals 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v0

    .line 529
    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->a:Lcom/nianticproject/ingress/common/j/z;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;IZ)V

    .line 530
    const-string/jumbo v1, "glCreateShader"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 531
    return v0
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    .line 259
    const-string/jumbo v0, "glCullFace"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 536
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->b:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 537
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 538
    const-string/jumbo v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 543
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->c:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 544
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 545
    const-string/jumbo v0, "glDeleteFramebuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 2
    .parameter

    .prologue
    .line 550
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->f:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;IZ)V

    .line 551
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 552
    const-string/jumbo v0, "glDeleteProgram"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 557
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->d:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 558
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 559
    const-string/jumbo v0, "glDeleteRenderbuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 2
    .parameter

    .prologue
    .line 564
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->a:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;IZ)V

    .line 565
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 566
    const-string/jumbo v0, "glDeleteShader"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->e:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 266
    const-string/jumbo v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 272
    const-string/jumbo v0, "glDepthFunc"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 278
    const-string/jumbo v0, "glDepthMask"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 284
    const-string/jumbo v0, "glDepthRangef"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public glDetachShader(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDetachShader(II)V

    .line 572
    const-string/jumbo v0, "glDetachShader"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 290
    const-string/jumbo v0, "glDisable"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 578
    const-string/jumbo v0, "glDisableVertexAttribArray"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 296
    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 584
    const-string/jumbo v0, "glDrawElements"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 302
    const-string/jumbo v0, "glDrawElements"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 308
    const-string/jumbo v0, "glEnable"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 590
    const-string/jumbo v0, "glEnableVertexAttribArray"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFinish()V

    .line 314
    const-string/jumbo v0, "glFinish"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFlush()V

    .line 320
    const-string/jumbo v0, "glFlush"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 596
    const-string/jumbo v0, "glFramebufferRenderbuffer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 602
    const-string/jumbo v0, "glFramebufferTexture2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glFrontFace(I)V

    .line 326
    const-string/jumbo v0, "glFrontFace"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 608
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->b:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 609
    const-string/jumbo v0, "glGenBuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 620
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 621
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->c:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 622
    const-string/jumbo v0, "glGenFramebuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 627
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 628
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->d:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 629
    const-string/jumbo v0, "glGenRenderbuffers"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 332
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->e:Lcom/nianticproject/ingress/common/j/z;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Lcom/nianticproject/ingress/common/j/z;ILjava/nio/IntBuffer;Z)V

    .line 333
    const-string/jumbo v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 615
    const-string/jumbo v0, "glGenerateMipmap"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string/jumbo v1, "glGetActiveAttrib"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 637
    return-object v0
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "glGetActiveUniform"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 645
    return-object v0
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    .line 651
    const-string/jumbo v0, "glGetAttachedShaders"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 657
    const-string/jumbo v1, "glGetAttribLocation"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 658
    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    .line 664
    const-string/jumbo v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 670
    const-string/jumbo v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public glGetError()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    .line 339
    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 676
    const-string/jumbo v0, "glGetFloatv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 682
    const-string/jumbo v0, "glGetFramebufferAttachmentParameteriv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 345
    const-string/jumbo v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    const-string/jumbo v1, "glGetProgramInfoLog"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 696
    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 688
    const-string/jumbo v0, "glGetProgramiv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 702
    const-string/jumbo v0, "glGetRenderbufferParameteriv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string/jumbo v1, "glGetShaderInfoLog"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 716
    return-object v0
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 722
    const-string/jumbo v0, "glGetShaderPrecisionFormat"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public glGetShaderSource(IILjava/nio/Buffer;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderSource(IILjava/nio/Buffer;Ljava/lang/String;)V

    .line 728
    const-string/jumbo v0, "glGetShaderSource"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 708
    const-string/jumbo v0, "glGetShaderiv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "glGetString"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 352
    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 734
    const-string/jumbo v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 740
    const-string/jumbo v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 758
    const-string/jumbo v1, "glGetUniformLocation"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 759
    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 746
    const-string/jumbo v0, "glGetUniformfv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 752
    const-string/jumbo v0, "glGetUniformiv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    .line 777
    const-string/jumbo v0, "glGetVertexAttribPointerv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 765
    const-string/jumbo v0, "glGetVertexAttribfv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 771
    const-string/jumbo v0, "glGetVertexAttribiv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glHint(II)V

    .line 358
    const-string/jumbo v0, "glHint"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsBuffer(I)Z

    move-result v0

    .line 783
    const-string/jumbo v1, "glIsBuffer"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 784
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 789
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsEnabled(I)Z

    move-result v0

    .line 790
    const-string/jumbo v1, "glIsEnabled"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 791
    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 2
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsFramebuffer(I)Z

    move-result v0

    .line 797
    const-string/jumbo v1, "glIsFramebuffer"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 798
    return v0
.end method

.method public glIsProgram(I)Z
    .locals 2
    .parameter

    .prologue
    .line 803
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsProgram(I)Z

    move-result v0

    .line 804
    const-string/jumbo v1, "glIsProgram"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 805
    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 2
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsRenderbuffer(I)Z

    move-result v0

    .line 811
    const-string/jumbo v1, "glIsRenderbuffer"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 812
    return v0
.end method

.method public glIsShader(I)Z
    .locals 2
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsShader(I)Z

    move-result v0

    .line 818
    const-string/jumbo v1, "glIsShader"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 819
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsTexture(I)Z

    move-result v0

    .line 825
    const-string/jumbo v1, "glIsTexture"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 826
    return v0
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLineWidth(F)V

    .line 364
    const-string/jumbo v0, "glLineWidth"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 832
    const-string/jumbo v0, "glLinkProgram"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 370
    const-string/jumbo v0, "glPixelStorei"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPolygonOffset(FF)V

    .line 376
    const-string/jumbo v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 382
    const-string/jumbo v0, "glReadPixels"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glReleaseShaderCompiler()V

    .line 838
    const-string/jumbo v0, "glReleaseShaderCompiler"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 844
    const-string/jumbo v0, "glRenderbufferStorage"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 849
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glSampleCoverage(FZ)V

    .line 850
    const-string/jumbo v0, "glSampleCoverage"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 388
    const-string/jumbo v0, "glScissor"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 855
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 856
    const-string/jumbo v0, "glShaderBinary"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 863
    const-string/jumbo v0, "glShaderSource"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFunc(III)V

    .line 394
    const-string/jumbo v0, "glStencilFunc"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFuncSeparate(IIII)V

    .line 869
    const-string/jumbo v0, "glStencilFuncSeparate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMask(I)V

    .line 400
    const-string/jumbo v0, "glStencilMask"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMaskSeparate(II)V

    .line 875
    const-string/jumbo v0, "glStencilMaskSeparate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOp(III)V

    .line 406
    const-string/jumbo v0, "glStencilOp"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOpSeparate(IIII)V

    .line 881
    const-string/jumbo v0, "glStencilOpSeparate"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
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
    .line 412
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 413
    const-string/jumbo v0, "glTexImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 419
    const-string/jumbo v0, "glTexParameterf"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 887
    const-string/jumbo v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 893
    const-string/jumbo v0, "glTexParameteri"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 899
    const-string/jumbo v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
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
    .line 425
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 426
    const-string/jumbo v0, "glTexSubImage2D"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 904
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 905
    const-string/jumbo v0, "glUniform1f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 910
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 911
    const-string/jumbo v0, "glUniform1fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public glUniform1i(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 916
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 917
    const-string/jumbo v0, "glUniform1i"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 923
    const-string/jumbo v0, "glUniform1iv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 929
    const-string/jumbo v0, "glUniform2f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 935
    const-string/jumbo v0, "glUniform2fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public glUniform2i(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 941
    const-string/jumbo v0, "glUniform2i"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 947
    const-string/jumbo v0, "glUniform2iv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 953
    const-string/jumbo v0, "glUniform3f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 958
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 959
    const-string/jumbo v0, "glUniform3fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 965
    const-string/jumbo v0, "glUniform3i"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 970
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 971
    const-string/jumbo v0, "glUniform3iv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 977
    const-string/jumbo v0, "glUniform4f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 983
    const-string/jumbo v0, "glUniform4fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 989
    const-string/jumbo v0, "glUniform4i"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 995
    const-string/jumbo v0, "glUniform4iv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1001
    const-string/jumbo v0, "glUniformMatrix2fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1007
    const-string/jumbo v0, "glUniformMatrix3fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1013
    const-string/jumbo v0, "glUniformMatrix4fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public glUseProgram(I)V
    .locals 1
    .parameter

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 1019
    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glValidateProgram(I)V

    .line 1025
    const-string/jumbo v0, "glValidateProgram"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1f(IF)V

    .line 1031
    const-string/jumbo v0, "glVertexAttrib1f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 1037
    const-string/jumbo v0, "glVertexAttrib1fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2f(IFF)V

    .line 1043
    const-string/jumbo v0, "glVertexAttrib2f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 1049
    const-string/jumbo v0, "glVertexAttrib2fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3f(IFFF)V

    .line 1055
    const-string/jumbo v0, "glVertexAttrib3f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 1061
    const-string/jumbo v0, "glVertexAttrib3fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 1067
    const-string/jumbo v0, "glVertexAttrib4f"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 1073
    const-string/jumbo v0, "glVertexAttrib4fv"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 1085
    const-string/jumbo v0, "glVertexAttribPointer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1086
    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1079
    const-string/jumbo v0, "glVertexAttribPointer"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/y;->c:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 432
    const-string/jumbo v0, "glViewport"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/y;->a(Ljava/lang/String;)V

    .line 433
    return-void
.end method
