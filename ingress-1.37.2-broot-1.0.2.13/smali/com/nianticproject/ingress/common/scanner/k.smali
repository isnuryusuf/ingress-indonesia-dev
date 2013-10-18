.class public abstract Lcom/nianticproject/ingress/common/scanner/k;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# static fields
.field private static final d:Lcom/nianticproject/ingress/common/w/aa;

.field private static final e:Lcom/nianticproject/ingress/common/t/b;

.field private static final f:Lcom/nianticproject/ingress/common/t/b;

.field private static final g:Lcom/nianticproject/ingress/common/t/b;


# instance fields
.field private A:Lcom/google/a/d/u;

.field private final B:Lcom/nianticproject/ingress/common/j/ao;

.field private C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

.field private D:F

.field private E:Z

.field private F:Z

.field private final G:Lcom/c/a/a/a/a;

.field private final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/scanner/fg;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Lcom/nianticproject/ingress/common/scanner/es;

.field private final J:Lcom/nianticproject/ingress/common/scanner/ge;

.field private final K:Lcom/nianticproject/ingress/common/q/e;

.field private L:Lcom/nianticproject/ingress/common/scanner/visuals/h;

.field private M:Lcom/nianticproject/ingress/common/scanner/visuals/ch;

.field private N:Lcom/nianticproject/ingress/common/scanner/visuals/cn;

.field private O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

.field private P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

.field private Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

.field private R:Lcom/nianticproject/ingress/common/scanner/visuals/ce;

.field private S:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

.field private T:Lcom/nianticproject/ingress/common/scanner/visuals/m;

.field private U:Lcom/nianticproject/ingress/common/scanner/aa;

.field private V:Lcom/nianticproject/ingress/common/scanner/ab;

.field private final W:Lcom/nianticproject/ingress/common/ui/e/b;

.field private final X:Lcom/nianticproject/ingress/common/scanner/modes/a;

.field private final Y:Lcom/nianticproject/ingress/common/scanner/ez;

.field private final Z:Lcom/nianticproject/ingress/common/scanner/et;

.field final a:Lcom/nianticproject/ingress/common/j/h;

.field private aa:Z

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:I

.field private ae:I

.field private final af:Lcom/nianticproject/ingress/common/ui/f/a;

.field private ag:Lcom/nianticproject/ingress/common/scanner/ac;

.field private final ah:Lcom/nianticproject/ingress/common/model/l;

.field private final ai:Lcom/nianticproject/ingress/common/ui/f/d;

.field final b:Lcom/nianticproject/ingress/common/scanner/ey;

.field final c:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final h:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final i:Lcom/nianticproject/ingress/common/ui/d/a;

.field private final j:Lcom/nianticproject/ingress/common/ui/d/d;

.field private final k:Lcom/nianticproject/ingress/common/w/k;

.field private final l:Lcom/nianticproject/ingress/common/scanner/ft;

.field private final m:Lcom/nianticproject/ingress/common/h/l;

.field private final n:Lcom/nianticproject/ingress/common/ac;

.field private final o:Lcom/nianticproject/ingress/common/j/av;

.field private final p:Lcom/nianticproject/ingress/common/model/k;

.field private final q:Lcom/nianticproject/ingress/common/c/ao;

.field private final r:Lcom/nianticproject/ingress/common/r;

.field private final s:Lcom/nianticproject/ingress/common/scanner/ad;

.field private final t:Lcom/nianticproject/ingress/common/a;

.field private final u:Lcom/nianticproject/ingress/common/scanner/visuals/ck;

.field private v:F

.field private w:F

.field private x:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final y:Lcom/nianticproject/ingress/common/scanner/c;

.field private z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/model/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/k;->d:Lcom/nianticproject/ingress/common/w/aa;

    .line 149
    const-string/jumbo v0, "Scanner Update"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/k;->e:Lcom/nianticproject/ingress/common/t/b;

    .line 150
    const-string/jumbo v0, "Scanner GameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/k;->f:Lcom/nianticproject/ingress/common/t/b;

    .line 151
    const-string/jumbo v0, "Scanner Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/k;->g:Lcom/nianticproject/ingress/common/t/b;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/q/e;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/scanner/ad;)V
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
    .line 335
    const-string/jumbo v1, "ScannerActivity"

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/fp;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 195
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/c;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/c;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    .line 200
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->z:Lcom/badlogic/gdx/utils/Array;

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    .line 210
    const/high16 v1, 0x7fc0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->D:F

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->E:Z

    .line 215
    new-instance v1, Lcom/c/a/a/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/c/a/a/a/a;-><init>(B)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->G:Lcom/c/a/a/a/a;

    .line 222
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    .line 224
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/l;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/l;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->I:Lcom/nianticproject/ingress/common/scanner/es;

    .line 238
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ge;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/ge;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->J:Lcom/nianticproject/ingress/common/scanner/ge;

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ab:Z

    .line 275
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    .line 276
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ae:I

    .line 279
    new-instance v1, Lcom/nianticproject/ingress/common/ui/f/a;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/ui/f/a;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->af:Lcom/nianticproject/ingress/common/ui/f/a;

    .line 283
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/p;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/p;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ah:Lcom/nianticproject/ingress/common/model/l;

    .line 1602
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/n;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/n;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ai:Lcom/nianticproject/ingress/common/ui/f/d;

    .line 337
    :try_start_0
    const-string/jumbo v1, "Scanner.Scanner"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/w/k;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->k:Lcom/nianticproject/ingress/common/w/k;

    .line 339
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/h/l;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->m:Lcom/nianticproject/ingress/common/h/l;

    .line 340
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/ac;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->n:Lcom/nianticproject/ingress/common/ac;

    .line 341
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/j/av;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->o:Lcom/nianticproject/ingress/common/j/av;

    .line 342
    invoke-static/range {p5 .. p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/model/k;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    .line 343
    invoke-static/range {p7 .. p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/q/e;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->K:Lcom/nianticproject/ingress/common/q/e;

    .line 344
    invoke-static/range {p8 .. p8}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/r;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->r:Lcom/nianticproject/ingress/common/r;

    .line 345
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->s:Lcom/nianticproject/ingress/common/scanner/ad;

    .line 346
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->t:Lcom/nianticproject/ingress/common/a;

    .line 348
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ck;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/ck;-><init>(Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->u:Lcom/nianticproject/ingress/common/scanner/visuals/ck;

    .line 349
    new-instance v1, Lcom/nianticproject/ingress/common/j/h;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/j/h;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    .line 350
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->I:Lcom/nianticproject/ingress/common/scanner/es;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/ft;-><init>(Lcom/nianticproject/ingress/common/scanner/es;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    .line 351
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->k:Lcom/nianticproject/ingress/common/w/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v3, v0}, Lcom/nianticproject/ingress/common/scanner/ed;-><init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 352
    new-instance v1, Lcom/nianticproject/ingress/common/c/ao;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->u:Lcom/nianticproject/ingress/common/scanner/visuals/ck;

    move-object/from16 v0, p5

    invoke-direct {v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/c/ao;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/g;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->q:Lcom/nianticproject/ingress/common/c/ao;

    .line 354
    new-instance v1, Lcom/nianticproject/ingress/common/j/ao;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/j/ao;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    .line 356
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ey;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/nianticproject/ingress/common/scanner/ey;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/r;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    .line 359
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/nianticproject/ingress/common/scanner/modes/k;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    .line 361
    new-instance v1, Lcom/nianticproject/ingress/common/ui/e/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/e/b;-><init>(Lcom/nianticproject/ingress/common/j/ao;Lcom/nianticproject/ingress/common/ui/e/a;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    .line 363
    new-instance v1, Lcom/nianticproject/ingress/common/ui/d/d;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nianticproject/ingress/common/ui/d/b;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/ui/d/d;-><init>([Lcom/nianticproject/ingress/common/ui/d/b;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    .line 364
    new-instance v1, Lcom/nianticproject/ingress/common/ui/d/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/ui/d/a;-><init>(Lcom/nianticproject/ingress/common/ui/d/b;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->i:Lcom/nianticproject/ingress/common/ui/d/a;

    .line 366
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ez;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/k;->af:Lcom/nianticproject/ingress/common/ui/f/a;

    move-object/from16 v3, p5

    move-object v4, p0

    move-object v6, p4

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/ez;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/f/a;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->Y:Lcom/nianticproject/ingress/common/scanner/ez;

    .line 369
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->af:Lcom/nianticproject/ingress/common/ui/f/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->ai:Lcom/nianticproject/ingress/common/ui/f/d;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/f/a;->a(Lcom/nianticproject/ingress/common/ui/f/d;)V

    .line 371
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/et;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/et;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->Z:Lcom/nianticproject/ingress/common/scanner/et;

    .line 374
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->i:Lcom/nianticproject/ingress/common/ui/d/a;

    invoke-super {p0, v1}, Lcom/nianticproject/ingress/common/ui/a;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/fp;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/google/a/d/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ac;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ag:Lcom/nianticproject/ingress/common/scanner/ac;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/o;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    iget-char v2, v2, Lcom/nianticproject/ingress/common/ui/d;->g:C

    new-instance v3, Lcom/nianticproject/ingress/common/ui/elements/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Move within range of a Portal\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "and Hack it."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v1, v2, v4}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/s;

    invoke-direct {v3, p0, v1, v0}, Lcom/nianticproject/ingress/common/scanner/s;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ab:Z

    return p1
.end method

.method private b(FFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->v:F

    div-float v0, p1, v0

    .line 611
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->w:F

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    .line 612
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-static {v2, v0, v1}, Lcom/nianticproject/ingress/common/j/g;->a(Lcom/nianticproject/ingress/common/j/f;FF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 616
    iget-object v1, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v1, v2

    .line 617
    iget-object v2, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 618
    iget-object v2, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 621
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/k;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/k;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->aa:Z

    return p1
.end method

.method private c(Lcom/google/a/d/u;)V
    .locals 1
    .parameter

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/fp;->c(Lcom/google/a/d/u;)V

    .line 1443
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/google/a/d/u;)V

    .line 1444
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ab:Z

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ez;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Y:Lcom/nianticproject/ingress/common/scanner/ez;

    return-object v0
.end method

.method public static d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1539
    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/ag;->a(Z)V

    .line 1540
    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->a(Z)V

    .line 1541
    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->a(Z)V

    .line 1542
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Z)V

    .line 1543
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/ad;->a()V

    .line 1544
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b()V

    .line 1545
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->a()V

    .line 1546
    return-void
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->aa:Z

    if-eqz v0, :cond_3

    const-string/jumbo v2, "Scanner disabled; Collect more XM."

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->a:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->ac:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->ac:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->b()V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ac:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v1

    const-class v2, Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->ac:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/aw;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->Q:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ab:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v0

## Change dari if-nez ke if-eqz, scanner akan selalu aktif --  File k.smali 
    if-eqz v0, :cond_4

    const-string/jumbo v2, "Scanner disabled; Location inaccurate."

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->b:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/k;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/modes/a;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ac;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->n:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/et;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Z:Lcom/nianticproject/ingress/common/scanner/et;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ad;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->s:Lcom/nianticproject/ingress/common/scanner/ad;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ft;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/e/b;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/j/ao;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/scanner/k;)F
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->v:F

    return v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/scanner/k;)F
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->w:F

    return v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/visuals/bt;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    return-object v0
.end method

.method static synthetic q(Lcom/nianticproject/ingress/common/scanner/k;)I
    .locals 2
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    return v0
.end method

.method static synthetic r(Lcom/nianticproject/ingress/common/scanner/k;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    return v0
.end method

.method static synthetic s(Lcom/nianticproject/ingress/common/scanner/k;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    return v0
.end method

.method static synthetic t(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/f/a;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->af:Lcom/nianticproject/ingress/common/ui/f/a;

    return-object v0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 950
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->s()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A()F
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->v:F

    return v0
.end method

.method public final B()Lcom/nianticproject/ingress/common/ui/e/b;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    return-object v0
.end method

.method public final C()Lcom/nianticproject/ingress/common/scanner/z;
    .locals 2

    .prologue
    .line 1411
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/z;-><init>(Lcom/nianticproject/ingress/common/scanner/k;B)V

    return-object v0
.end method

.method public final D()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v0

    .line 1459
    :goto_0
    return-object v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    goto :goto_0

    .line 1459
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final E()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lcom/nianticproject/ingress/common/scanner/ed;
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    return-object v0
.end method

.method public final G()Lcom/c/a/a/a/a;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->G:Lcom/c/a/a/a/a;

    return-object v0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->F:Z

    return v0
.end method

.method public final I()V
    .locals 1

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/t;->a(Lcom/nianticproject/ingress/common/ui/ad;)V

    .line 1531
    return-void
.end method

.method public final a(FF)Lcom/google/a/d/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 595
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 596
    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(FFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/badlogic/gdx/math/Vector2;)Lcom/google/a/d/u;

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 599
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(FFLcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/scanner/ej;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/k;->b(FFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_1

    .line 572
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-object v0

    .line 579
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->v:F

    div-float v0, p1, v0

    .line 580
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->w:F

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    .line 581
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 582
    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/scanner/fk;

    .line 686
    if-nez v3, :cond_0

    .line 687
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    .line 709
    :goto_0
    return-object v0

    .line 690
    :cond_0
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 692
    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_1

    .line 695
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 699
    :cond_2
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 700
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    const/high16 v5, 0x3f80

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/fk;Ljava/util/List;F)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    const/high16 v5, 0x3f00

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/fk;Ljava/util/List;F)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;

    .line 706
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/j/o;)V

    goto :goto_2

    :cond_3
    move-object v0, v6

    .line 709
    goto :goto_0
.end method

.method public final a()V
    .locals 5

    .prologue
    .line 1261
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 1262
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f80

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 1263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a(Z)V

    .line 1265
    return-void
.end method

.method public final a(F)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1183
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->e:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 1185
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->D:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->D:F

    .line 1187
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->x()V

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/google/a/d/u;)V

    .line 1191
    :cond_1
    :goto_0
    :try_start_0
    const-string/jumbo v0, "Scanner.processGameStateUpdates"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->f:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/c;->a()Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v0, v5, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-static {v0}, Lcom/google/a/c/jc;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v0, v5, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v1, "Scanner.updatePointEntities"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    if-eqz v1, :cond_3

    sget-object v8, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/nianticproject/ingress/shared/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    if-nez v1, :cond_7

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 1190
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4049

    sub-double v5, v3, v5

    const-wide v7, 0x400f9999a0000000L

    mul-double/2addr v7, v3

    const-wide/high16 v9, 0x4004

    add-double/2addr v7, v9

    float-to-double v9, p1

    mul-double/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpl-double v1, v5, v3

    if-gtz v1, :cond_5

    const-wide v3, 0x408f400000000000L

    cmpl-double v1, v5, v3

    if-lez v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/google/a/d/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    invoke-static {v0, v1, v5, v6}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;D)Lcom/google/a/d/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->c(Lcom/google/a/d/u;)V

    goto/16 :goto_0

    .line 1191
    :cond_7
    :try_start_3
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v1

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/k;->J:Lcom/nianticproject/ingress/common/scanner/ge;

    invoke-static {v1, v0, v8}, Lcom/nianticproject/ingress/common/scanner/ff;->a(Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ge;)Lcom/nianticproject/ingress/common/scanner/fg;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/nianticproject/ingress/common/scanner/fg;->l()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/eo;->a()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v8}, Lcom/nianticproject/ingress/common/scanner/ft;->a(JLcom/nianticproject/ingress/common/scanner/fg;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->G:Lcom/c/a/a/a/a;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/ff;->a()Lcom/nianticproject/ingress/common/ui/hud/b;

    goto/16 :goto_1

    :cond_8
    invoke-interface {v8, v0}, Lcom/nianticproject/ingress/common/scanner/ej;->a(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_9
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ej;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->i()V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->q:Lcom/nianticproject/ingress/common/c/ao;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/c/ao;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->M:Lcom/nianticproject/ingress/common/scanner/visuals/ch;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ch;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->L:Lcom/nianticproject/ingress/common/scanner/visuals/h;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->N:Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->S:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->S:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Ljava/util/Set;)V

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->z:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/j;

    invoke-interface {v0, v5}, Lcom/nianticproject/ingress/common/model/j;->a(Lcom/nianticproject/ingress/common/model/GameState;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    :goto_4
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->d:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Scanner.processGameStateUpdates completed in %dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->f:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/b;->a(F)V

    .line 1197
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ae:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    if-nez v0, :cond_e

    .line 1198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/google/a/d/u;)V

    .line 1199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->r:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 1201
    :cond_e
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ad:I

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ae:I

    .line 1202
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/j/ao;->a(F)V

    .line 1205
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ed;->a(F)V

    .line 1208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(F)V

    .line 1211
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->q:Lcom/nianticproject/ingress/common/c/ao;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/c/ao;->a(F)V

    .line 1214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Y:Lcom/nianticproject/ingress/common/scanner/ez;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ez;->b()V

    .line 1217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Z:Lcom/nianticproject/ingress/common/scanner/et;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/et;->a()V

    .line 1219
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->e:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 1220
    return-void

    :cond_f
    move v0, v1

    goto :goto_4
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1135
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/a;->a(II)V

    .line 1137
    int-to-float v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->v:F

    .line 1138
    int-to-float v0, p2

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->w:F

    .line 1141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/j/h;->a(II)V

    .line 1144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/j/ao;->a(II)V

    .line 1145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ao;->a(F)V

    .line 1146
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 7
    .parameter

    .prologue
    .line 956
    :try_start_0
    const-string/jumbo v0, "Scanner.doCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 957
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 959
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/ad;->a()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 962
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/u;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/u;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->s()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/Compass;-><init>(Lcom/nianticproject/ingress/common/ui/elements/r;Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    .line 974
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b()V

    .line 975
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 977
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/ab;-><init>(Lcom/nianticproject/ingress/common/scanner/k;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->V:Lcom/nianticproject/ingress/common/scanner/ab;

    .line 978
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/aa;-><init>(Lcom/nianticproject/ingress/common/scanner/k;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->U:Lcom/nianticproject/ingress/common/scanner/aa;

    .line 981
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/d/d;->a()V

    .line 982
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/d/d;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 983
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->V:Lcom/nianticproject/ingress/common/scanner/ab;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/d/d;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 984
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->j:Lcom/nianticproject/ingress/common/ui/d/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->U:Lcom/nianticproject/ingress/common/scanner/aa;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/d/d;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 987
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/h;->a()V

    .line 992
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->K:Lcom/nianticproject/ingress/common/q/e;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/a/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->K:Lcom/nianticproject/ingress/common/q/e;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/ad;-><init>(Lcom/nianticproject/ingress/common/q/e;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/scanner/a/ad;)V

    .line 996
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/h;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->L:Lcom/nianticproject/ingress/common/scanner/visuals/h;

    .line 997
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->L:Lcom/nianticproject/ingress/common/scanner/visuals/h;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 999
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->N:Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    .line 1000
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->N:Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1002
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-direct {v0, v1, v2, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    .line 1004
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1007
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->u:Lcom/nianticproject/ingress/common/scanner/visuals/ck;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1009
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/be;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    .line 1010
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1011
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/au;)V

    .line 1013
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ch;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/ch;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->M:Lcom/nianticproject/ingress/common/scanner/visuals/ch;

    .line 1014
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->M:Lcom/nianticproject/ingress/common/scanner/visuals/ch;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1015
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/ce;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/ce;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->R:Lcom/nianticproject/ingress/common/scanner/visuals/ce;

    .line 1016
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->R:Lcom/nianticproject/ingress/common/scanner/visuals/ce;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1018
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/v;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/v;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/visuals/bn;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->S:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    .line 1025
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->S:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1027
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/m;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->T:Lcom/nianticproject/ingress/common/scanner/visuals/m;

    .line 1028
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->T:Lcom/nianticproject/ingress/common/scanner/visuals/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1031
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ah:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 1032
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ah:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/common/ad;)V

    .line 1038
    :cond_1
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 1042
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/ey;->a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/ui/elements/Compass;)V

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->F:Z

    .line 1048
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->t:Lcom/nianticproject/ingress/common/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    invoke-static {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/et;->a(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/e;)V

    .line 1051
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/et;->a()Lcom/nianticproject/ingress/common/missions/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bp;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1053
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/w;

    const-string/jumbo v2, "InviteNag"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/scanner/w;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Y:Lcom/nianticproject/ingress/common/scanner/ez;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/ad;->a()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ez;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 2
    .parameter

    .prologue
    .line 902
    const-string/jumbo v0, "Target"

    const-string/jumbo v1, "location"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/google/a/d/u;)V

    .line 904
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/o;)V
    .locals 1
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 425
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 718
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/c;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 719
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/j;)V
    .locals 1
    .parameter

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 746
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ac;)V
    .locals 3
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/nianticproject/ingress/common/scanner/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 475
    iget-object v0, p1, Lcom/nianticproject/ingress/common/scanner/ac;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ev;

    .line 476
    iget-object v2, p1, Lcom/nianticproject/ingress/common/scanner/ac;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 474
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/q;

    invoke-direct {v2, p0, v0, p1}, Lcom/nianticproject/ingress/common/scanner/q;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ev;Lcom/nianticproject/ingress/common/scanner/ac;)V

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    goto :goto_1

    .line 499
    :cond_1
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/ui/hud/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-interface {p1, p2}, Lcom/nianticproject/ingress/common/scanner/ej;->a(Lcom/nianticproject/ingress/common/ui/hud/b;)V

    .line 455
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 456
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ev;)V
    .locals 1
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->Z:Lcom/nianticproject/ingress/common/scanner/et;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/et;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 1121
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 441
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/gameentity/components/Portal;)V
    .locals 10
    .parameter

    .prologue
    .line 916
    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ah;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/k;->m:Lcom/nianticproject/ingress/common/h/l;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/k;->r:Lcom/nianticproject/ingress/common/r;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/k;->o:Lcom/nianticproject/ingress/common/j/av;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/scanner/modes/ah;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/j/av;)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 918
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 7
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 640
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/k;->m:Lcom/nianticproject/ingress/common/h/l;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/k;->b:Lcom/nianticproject/ingress/common/scanner/ey;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/modes/l;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V

    .line 642
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/l;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 643
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 644
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/ui/c/h;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 657
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Weapon;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->h:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v8

    .line 660
    new-instance v0, Lcom/nianticproject/ingress/common/ui/c/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/k;->m:Lcom/nianticproject/ingress/common/h/l;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    move-object v2, p1

    move-object v3, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/common/ui/c/c;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/nianticproject/ingress/common/scanner/ft;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/ui/c/h;)V

    .line 662
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 463
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->R:Lcom/nianticproject/ingress/common/scanner/visuals/ce;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/ce;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;Lcom/nianticproject/ingress/common/j/ao;)V

    .line 465
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->O:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Ljava/util/Collection;)V

    .line 631
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/c;->a(Ljava/util/Collection;)V

    .line 723
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;
    .locals 1
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ej;

    return-object v0
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .parameter

    .prologue
    .line 1291
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 1293
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 1297
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/y;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/y;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 1311
    return-void
.end method

.method public final b(Lcom/google/a/d/u;)V
    .locals 1
    .parameter

    .prologue
    .line 1437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->A:Lcom/google/a/d/u;

    .line 1438
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->c(Lcom/google/a/d/u;)V

    .line 1439
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/ui/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/ad;->b(Lcom/nianticproject/ingress/common/ui/ac;)Z

    .line 448
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 4
    .parameter

    .prologue
    .line 865
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

## Change dari if-nez ke if-eqz
    .line 866
    if-nez v0, :cond_0

    .line 867
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->d:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "startDestinationTracking failed -- no LocationE6 found in entity=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/t;

    invoke-direct {v2, p0, p1}, Lcom/nianticproject/ingress/common/scanner/t;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/nianticproject/ingress/common/scanner/eg;)V

    .line 894
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/google/a/d/u;)V

    .line 895
    const-string/jumbo v0, "Target"

    const-string/jumbo v1, "entity"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/c;->b(Ljava/util/Collection;)V

    .line 727
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 925
    invoke-static {p1}, Lcom/nianticproject/ingress/common/s/c;->b(Z)V

    .line 927
    if-eqz p1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->e()V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->b(F)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 941
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/k;->E:Z

    .line 942
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b(Z)V

    .line 943
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->q:Lcom/nianticproject/ingress/common/c/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ao;->b()V

    .line 1257
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 1162
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->g:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 1165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->a(Lcom/nianticproject/ingress/common/j/f;)V

    .line 1169
    :try_start_0
    const-string/jumbo v0, "DrawDebug"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/f;)V

    .line 1171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1176
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a()V

    .line 1178
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/k;->g:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 1179
    return-void

    .line 1173
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final k()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public final l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->P:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    return-object v0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->a()Z

    move-result v0

    return v0
.end method

.method public final m()Lcom/nianticproject/ingress/common/scanner/visuals/cn;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->N:Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    return-object v0
.end method

.method public final m_()Z
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x1

    return v0
.end method

.method public final n()Lcom/nianticproject/ingress/common/j/h;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    return-object v0
.end method

.method public final o()Lcom/nianticproject/ingress/common/ui/d/a;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->i:Lcom/nianticproject/ingress/common/ui/d/a;

    return-object v0
.end method

.method public final p()Lcom/nianticproject/ingress/common/ac;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->n:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fg;

    .line 1275
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->dispose()V

    goto :goto_0

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1278
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->y:Lcom/nianticproject/ingress/common/scanner/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/c;->b()V

    .line 1280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 1281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->a:Lcom/nianticproject/ingress/common/j/h;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 1283
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->ah:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 1284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->q:Lcom/nianticproject/ingress/common/c/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ao;->a()V

    .line 1286
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->p_()V

    .line 1287
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ag:Lcom/nianticproject/ingress/common/scanner/ac;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ac;->a:Lcom/nianticproject/ingress/common/scanner/ac;

    if-ne v0, v1, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->ag:Lcom/nianticproject/ingress/common/scanner/ac;

    .line 548
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    .line 549
    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/n;->b:Lcom/nianticproject/ingress/common/ui/elements/n;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/i;->a(Lcom/nianticproject/ingress/common/ui/elements/n;)V

    .line 550
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/et;->a()Lcom/nianticproject/ingress/common/missions/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bp;->c()V

    .line 552
    :cond_0
    return-void
.end method

.method public final q_()V
    .locals 0

    .prologue
    .line 1315
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->q_()V

    .line 1316
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/ag;->a()V

    .line 1317
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/aw;->c()V

    .line 1318
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->c()V

    .line 1319
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->b()V

    .line 1320
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/ad;->b()V

    .line 1321
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->c()V

    .line 1322
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->b()V

    .line 1323
    return-void
.end method

.method public final r()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->l:Lcom/nianticproject/ingress/common/scanner/ft;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/db;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ag;->v:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/db;-><init>(Lcom/nianticproject/ingress/common/j/ai;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 673
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->b()V

    .line 913
    :cond_0
    return-void
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->E:Z

    return v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->W:Lcom/nianticproject/ingress/common/ui/e/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/ui/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->B:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()F
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->p:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    .line 1125
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    .line 1126
    return v0

    .line 1124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final x()V
    .locals 3

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->C:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    const v1, -0x3d9ad11f

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/k;->w()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b(F)V

    .line 1131
    return-void
.end method

.method public final y()Lcom/nianticproject/ingress/common/scanner/modes/a;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->X:Lcom/nianticproject/ingress/common/scanner/modes/a;

    return-object v0
.end method

.method public final z()F
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/k;->w:F

    return v0
.end method
