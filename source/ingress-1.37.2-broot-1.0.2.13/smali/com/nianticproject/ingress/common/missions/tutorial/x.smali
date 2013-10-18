.class public final Lcom/nianticproject/ingress/common/missions/tutorial/x;
.super Lcom/nianticproject/ingress/common/missions/af;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/tutorial/u;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/scanner/e;

.field private final c:Lcom/nianticproject/ingress/common/ac;

.field private d:Lcom/nianticproject/ingress/common/missions/tutorial/r;

.field private e:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field private f:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "NEXT_TUTORIAL_STEP_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/e;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 11
    .parameter
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
    .line 123
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/nianticproject/ingress/common/missions/af;-><init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 133
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->b:Lcom/nianticproject/ingress/common/scanner/e;

    .line 134
    invoke-virtual/range {p5 .. p5}, Lcom/nianticproject/ingress/common/scanner/k;->p()Lcom/nianticproject/ingress/common/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->c:Lcom/nianticproject/ingress/common/ac;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/missions/tutorial/r;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d:Lcom/nianticproject/ingress/common/missions/tutorial/r;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/w/d;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->s_()Lcom/nianticproject/ingress/common/missions/cl;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/cl;->a(Z)V

    .line 268
    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d:Lcom/nianticproject/ingress/common/missions/tutorial/r;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 273
    :goto_1
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d:Lcom/nianticproject/ingress/common/missions/tutorial/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/r;->e()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->e:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to find image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public final a()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->f:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 141
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/y;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/y;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;)V

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 150
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/w/c;)V
    .locals 13
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/p;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/p;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;)V

    .line 227
    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-direct {v1, p0, v2, v3}, Lcom/nianticproject/ingress/common/missions/tutorial/ad;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/g/ad;)V

    .line 228
    new-instance v2, Lcom/nianticproject/ingress/common/missions/tutorial/ab;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/g/p;->s()Lcom/nianticproject/ingress/common/c/ak;

    move-result-object v4

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/g/p;->y()Lcom/nianticproject/ingress/common/h;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/missions/tutorial/ab;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/h;)V

    .line 236
    new-instance v3, Lcom/nianticproject/ingress/common/missions/tutorial/aa;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/nianticproject/ingress/common/missions/tutorial/aa;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;I)V

    .line 237
    new-instance v4, Lcom/nianticproject/ingress/common/missions/tutorial/j;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/j;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V

    .line 238
    new-instance v5, Lcom/nianticproject/ingress/common/missions/tutorial/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->c:Lcom/nianticproject/ingress/common/ac;

    invoke-direct {v5, p0, v6}, Lcom/nianticproject/ingress/common/missions/tutorial/l;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/ac;)V

    .line 239
    new-instance v6, Lcom/nianticproject/ingress/common/missions/tutorial/g;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->b:Lcom/nianticproject/ingress/common/scanner/e;

    invoke-direct {v6, p0, v7}, Lcom/nianticproject/ingress/common/missions/tutorial/g;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/scanner/e;)V

    .line 240
    new-instance v7, Lcom/nianticproject/ingress/common/missions/tutorial/i;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->l:Lcom/nianticproject/ingress/common/h/k;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-direct {v7, p0, v8, v9}, Lcom/nianticproject/ingress/common/missions/tutorial/i;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/model/k;)V

    .line 243
    new-instance v8, Lcom/nianticproject/ingress/common/missions/tutorial/aa;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/nianticproject/ingress/common/missions/tutorial/aa;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;I)V

    .line 244
    new-instance v9, Lcom/nianticproject/ingress/common/missions/tutorial/e;

    invoke-direct {v9, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/e;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V

    .line 245
    new-instance v10, Lcom/nianticproject/ingress/common/missions/tutorial/a;

    invoke-direct {v10, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/a;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V

    .line 246
    new-instance v11, Lcom/nianticproject/ingress/common/missions/tutorial/c;

    invoke-direct {v11, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/c;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V

    .line 248
    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 249
    sget-object v12, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v0, v12, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 250
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v1, v0, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 251
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v2, v0, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 253
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v3, v0, v4}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 254
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v4, v0, v5}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 255
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v5, v0, v6}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 256
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v6, v0, v7}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 257
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/i;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v7, v0, v8}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 259
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v8, v0, v9}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 260
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v9, v0, v10}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 262
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/a;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {p1, v10, v0, v11}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 263
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a:Lcom/nianticproject/ingress/common/w/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->s:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v11, v0, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 264
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/w/d;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a/aj;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a/aj",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/high16 v4, 0x402e

    invoke-static {v0, v1, v2, v4, v5}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->j:Lcom/nianticproject/ingress/common/g/ad;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    move v4, v3

    move v5, v3

    move-object v7, p1

    move-object v8, v6

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->f:Lcom/nianticproject/ingress/gameentity/f;

    .line 167
    invoke-virtual {p2}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->f:Lcom/nianticproject/ingress/gameentity/f;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;

    invoke-direct {v1, p0, p2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialMission$2;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;Lcom/google/a/a/aj;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    .line 175
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 190
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/af;->c()V

    .line 191
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/r;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/r;-><init>(Lcom/nianticproject/ingress/common/w/b;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d:Lcom/nianticproject/ingress/common/missions/tutorial/r;

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d(Z)V

    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->k:Lcom/nianticproject/ingress/common/model/m;

    const-wide/16 v1, 0x258

    sget-object v3, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/m;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 198
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->y()Lcom/nianticproject/ingress/common/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h;->a(Z)V

    .line 199
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/af;->h()V

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d(Z)V

    .line 206
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->y()Lcom/nianticproject/ingress/common/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h;->a(Z)V

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->e:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/x;->e:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    .line 211
    :cond_0
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string/jumbo v0, "Agent Training"

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method
