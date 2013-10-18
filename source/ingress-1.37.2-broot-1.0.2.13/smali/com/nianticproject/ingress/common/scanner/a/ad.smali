.class public final Lcom/nianticproject/ingress/common/scanner/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;

.field private static final b:Lcom/nianticproject/ingress/common/t/b;

.field private static final c:Lcom/nianticproject/ingress/common/t/b;

.field private static final d:Lcom/nianticproject/ingress/common/t/b;

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z


# instance fields
.field private final j:Lcom/nianticproject/ingress/common/scanner/a/u;

.field private final k:La/a/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bl",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/badlogic/gdx/math/Matrix4;

.field private n:Lcom/nianticproject/ingress/common/q/a;

.field private o:Lcom/google/a/d/u;

.field private p:F

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    const-string/jumbo v0, "Map Setup"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    .line 55
    const-string/jumbo v0, "Map Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    .line 56
    const-string/jumbo v0, "Map Update"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->c:Lcom/nianticproject/ingress/common/t/b;

    .line 57
    const-string/jumbo v0, "Map Cull"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->d:Lcom/nianticproject/ingress/common/t/b;

    .line 59
    sput-boolean v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->e:Z

    .line 60
    sput-boolean v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->f:Z

    .line 61
    sput-boolean v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->g:Z

    .line 62
    sput-boolean v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->h:Z

    .line 63
    sput-boolean v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/q/e;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, La/a/a/a/b/bl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    .line 77
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->m:Lcom/badlogic/gdx/math/Matrix4;

    .line 106
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/scanner/a/u;-><init>(Lcom/nianticproject/ingress/common/q/e;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->j:Lcom/nianticproject/ingress/common/scanner/a/u;

    .line 107
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/n;->b()V

    .line 296
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 299
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/n;->c()V

    .line 300
    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/b/bw;)V
    .locals 16
    .parameter

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/q/a;->a()I

    move-result v1

    shr-int/lit8 v3, v1, 0xd

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/q/a;->b()I

    move-result v1

    shr-int/lit8 v4, v1, 0xd

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->j:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/a/u;->a()J

    move-result-wide v5

    .line 164
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, La/a/a/a/b/bw;->size()I

    move-result v7

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_1

    .line 165
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, La/a/a/a/b/bw;->e(I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 166
    invoke-static {v8, v9}, Lcom/nianticproject/ingress/common/q/c;->b(J)I

    move-result v1

    int-to-double v10, v1

    int-to-double v12, v3

    sub-double/2addr v10, v12

    .line 167
    invoke-static {v8, v9}, Lcom/nianticproject/ingress/common/q/c;->c(J)I

    move-result v1

    int-to-double v12, v1

    int-to-double v14, v4

    sub-double/2addr v12, v14

    .line 168
    mul-double/2addr v10, v10

    mul-double/2addr v12, v12

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    invoke-virtual {v1, v8, v9}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/a/ae;

    .line 170
    if-nez v1, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->j:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-virtual {v1, v8, v9}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(J)Lcom/nianticproject/ingress/common/scanner/a/ac;

    move-result-object v1

    .line 172
    new-instance v11, Lcom/nianticproject/ingress/common/scanner/a/ae;

    invoke-direct {v11, v1, v10, v5, v6}, Lcom/nianticproject/ingress/common/scanner/a/ae;-><init>(Lcom/nianticproject/ingress/common/scanner/a/ac;FJ)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    invoke-virtual {v1, v8, v9, v11}, La/a/a/a/b/bl;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1, v10, v5, v6}, Lcom/nianticproject/ingress/common/scanner/a/ae;->a(FJ)V

    goto :goto_1

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    invoke-virtual {v1}, La/a/a/a/b/bl;->d()La/a/a/a/b/bk;

    move-result-object v1

    invoke-interface {v1}, La/a/a/a/b/bk;->b()La/a/a/a/c/l;

    move-result-object v2

    .line 182
    :cond_2
    :goto_2
    invoke-interface {v2}, La/a/a/a/c/l;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-interface {v2}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/b/bj;

    invoke-interface {v1}, La/a/a/a/b/bj;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/a/ae;

    iget-wide v3, v1, Lcom/nianticproject/ingress/common/scanner/a/ae;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 184
    invoke-interface {v2}, La/a/a/a/c/l;->remove()V

    goto :goto_2

    .line 188
    :cond_3
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/ad;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 189
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;La/a/a/a/b/bw;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    :try_start_0
    const-string/jumbo v0, "MapVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->d:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->p:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->p:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->p:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->q:I

    invoke-virtual {p2}, La/a/a/a/b/bw;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    invoke-virtual {p2, v2}, La/a/a/a/b/bw;->e(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, La/a/a/a/b/bl;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ae;

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->q:I

    iput v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ae;->a:I

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->k:La/a/a/a/b/bl;

    invoke-virtual {v0}, La/a/a/a/b/bl;->b()La/a/a/a/c/j;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/j;->a()La/a/a/a/c/l;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/ae;

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ae;->a:I

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->q:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ae;->c:F

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ae;->b:Lcom/nianticproject/ingress/common/scanner/a/ac;

    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    iget-object v2, v5, Lcom/nianticproject/ingress/common/scanner/a/ac;->a:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-static {v2, v5, v0}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/scanner/a/ac;F)Lcom/nianticproject/ingress/common/scanner/a/n;

    move-result-object v0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_3
    move v3, v1

    .line 200
    goto :goto_2

    :cond_4
    const v0, 0x45098000

    add-float/2addr v0, v2

    goto :goto_3

    :cond_5
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->d:Lcom/nianticproject/ingress/common/t/b;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/b;->a(Lcom/nianticproject/ingress/common/t/b;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v3

    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/nianticproject/ingress/common/q/a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->i:Z

    if-eqz v0, :cond_7

    move v2, v1

    :goto_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->e(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_7
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->g:Z

    if-eqz v0, :cond_8

    move v2, v1

    :goto_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_8
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->h:Z

    if-eqz v0, :cond_9

    move v2, v1

    :goto_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->d(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_9
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->f:Z

    if-eqz v0, :cond_a

    move v2, v1

    :goto_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_a
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->e:Z

    if-eqz v0, :cond_b

    :goto_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->b:Lcom/nianticproject/ingress/common/t/b;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/b;->a(Lcom/nianticproject/ingress/common/t/b;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->j:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/a/u;->b()V

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/ad;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_c
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 203
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 4
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    invoke-virtual {v0, p1}, Lcom/google/a/d/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/q/a;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/q/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->n:Lcom/nianticproject/ingress/common/q/a;

    .line 145
    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->o:Lcom/google/a/d/u;

    invoke-virtual {v2}, Lcom/google/a/d/u;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ad;->p:F

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
