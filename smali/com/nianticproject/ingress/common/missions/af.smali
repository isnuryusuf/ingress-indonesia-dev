.class public abstract Lcom/nianticproject/ingress/common/missions/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/ch;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field public static final r:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/missions/cj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

.field private final d:Lcom/nianticproject/ingress/common/ui/t;

.field private e:Lcom/nianticproject/ingress/common/w/b;

.field private final f:Lcom/nianticproject/ingress/common/missions/cj;

.field protected final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/nianticproject/ingress/common/missions/ck;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Lcom/nianticproject/ingress/common/missions/cq;

.field protected final j:Lcom/nianticproject/ingress/common/g/ad;

.field protected final k:Lcom/nianticproject/ingress/common/model/m;

.field protected final l:Lcom/nianticproject/ingress/common/h/k;

.field protected final m:Lcom/nianticproject/ingress/common/scanner/k;

.field protected final n:Lcom/nianticproject/ingress/common/c/e;

.field protected final o:Lcom/nianticproject/ingress/common/a;

.field protected final p:Lcom/nianticproject/ingress/common/ui/elements/i;

.field protected final q:Lcom/nianticproject/ingress/common/model/a/e;

.field protected final s:Lcom/nianticproject/ingress/common/w/h;

.field protected final t:Lcom/nianticproject/ingress/common/w/h;

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/af;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/af;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_ABORT_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/af;->r:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->b:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ag;

    const-string/jumbo v1, "FINISH"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/ag;-><init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->s:Lcom/nianticproject/ingress/common/w/h;

    .line 96
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ah;

    const-string/jumbo v1, "ABORT"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/ah;-><init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->t:Lcom/nianticproject/ingress/common/w/h;

    .line 103
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/af;->u:Z

    .line 104
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/af;->v:Z

    .line 105
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/af;->w:Z

    .line 106
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/af;->x:Z

    .line 431
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ap;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/ap;-><init>(Lcom/nianticproject/ingress/common/missions/af;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->f:Lcom/nianticproject/ingress/common/missions/cj;

    .line 121
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/af;->i:Lcom/nianticproject/ingress/common/missions/cq;

    .line 122
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/af;->j:Lcom/nianticproject/ingress/common/g/ad;

    .line 123
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/af;->k:Lcom/nianticproject/ingress/common/model/m;

    .line 124
    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/af;->l:Lcom/nianticproject/ingress/common/h/k;

    .line 125
    iput-object p5, p0, Lcom/nianticproject/ingress/common/missions/af;->m:Lcom/nianticproject/ingress/common/scanner/k;

    .line 126
    iput-object p6, p0, Lcom/nianticproject/ingress/common/missions/af;->n:Lcom/nianticproject/ingress/common/c/e;

    .line 127
    iput-object p7, p0, Lcom/nianticproject/ingress/common/missions/af;->o:Lcom/nianticproject/ingress/common/a;

    .line 128
    iput-object p8, p0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    .line 129
    iput-object p9, p0, Lcom/nianticproject/ingress/common/missions/af;->q:Lcom/nianticproject/ingress/common/model/a/e;

    .line 130
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->d:Lcom/nianticproject/ingress/common/ui/t;

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->f:Lcom/nianticproject/ingress/common/missions/cj;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/missions/cj;)V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/af;)Lcom/nianticproject/ingress/common/w/b;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->e:Lcom/nianticproject/ingress/common/w/b;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/af;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->d:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method static synthetic v()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nianticproject/ingress/common/missions/af;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aj;

    invoke-direct {v0, p0, p2, p1}, Lcom/nianticproject/ingress/common/missions/aj;-><init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/d;)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/ci;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/missions/ci;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->e:Lcom/nianticproject/ingress/common/w/b;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/af;->r:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 258
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/cj;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    sget-object v0, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 266
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/ak;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/ak;-><init>(Lcom/nianticproject/ingress/common/missions/af;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/cj;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/missions/cj;->a(Lcom/nianticproject/ingress/common/missions/ck;)V

    goto :goto_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/missions/cr;Lcom/nianticproject/ingress/common/c/bs;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->n:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {p1, v0, p2}, Lcom/nianticproject/ingress/common/missions/cr;->a(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/bs;)V

    .line 252
    :cond_0
    return-void
.end method

.method protected a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 427
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    .line 428
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 429
    return-void
.end method

.method protected abstract a(Lcom/nianticproject/ingress/common/w/c;)V
.end method

.method protected final a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/nianticproject/ingress/common/missions/al;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/missions/al;-><init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;)V

    .line 316
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 317
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/google/a/c/ii;->a()Ljava/util/ArrayDeque;

    move-result-object v1

    .line 362
    invoke-static {}, Lcom/google/a/c/ii;->a()Ljava/util/ArrayDeque;

    move-result-object v2

    .line 364
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 366
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    if-ne v5, p4, :cond_1

    .line 376
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 378
    :cond_1
    new-instance v5, Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/nianticproject/ingress/common/ui/elements/m;->a:Lcom/nianticproject/ingress/common/ui/elements/m;

    invoke-direct {v5, v6, v0, v7}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/elements/m;)V

    invoke-interface {v1, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v5

    if-ge v5, p5, :cond_0

    .line 382
    new-instance v5, Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/nianticproject/ingress/common/ui/elements/m;->b:Lcom/nianticproject/ingress/common/ui/elements/m;

    invoke-direct {v5, v6, v0, v7}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/elements/m;)V

    invoke-interface {v2, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_3
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/af;->x:Z

    if-eqz v0, :cond_4

    .line 389
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/l;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "Training Mission"

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/elements/l;-><init>(Lcom/nianticproject/ingress/common/ui/elements/i;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_4
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/l;

    .line 394
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_5
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/l;

    .line 398
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 401
    :cond_6
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/an;

    invoke-direct {v1, p0, p1, v3}, Lcom/nianticproject/ingress/common/missions/an;-><init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 421
    return-void
.end method

.method protected final a(Ljava/util/Collection;)V
    .locals 6
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
    const v4, 0x7fffffff

    .line 346
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/af;->r()Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/missions/af;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;II)V

    .line 348
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/missions/af;->u:Z

    .line 186
    return-void
.end method

.method protected final a_(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/ai;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/missions/ai;-><init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 225
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/missions/cj;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/missions/af;->v:Z

    .line 191
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 137
    sget-object v0, Lcom/nianticproject/ingress/common/missions/af;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-static {}, Lcom/nianticproject/ingress/common/w/b;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/w/c;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w/h;

    sget-object v3, Lcom/nianticproject/ingress/common/missions/af;->r:Lcom/nianticproject/ingress/common/w/d;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/af;->t:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v1, v0, v3, v4}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/c;->b()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->e:Lcom/nianticproject/ingress/common/w/b;

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->e:Lcom/nianticproject/ingress/common/w/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/b;->b()V

    .line 139
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/missions/af;->w:Z

    .line 196
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->c:Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;

    .line 147
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/af;->x:Z

    .line 201
    return-void
.end method

.method protected final t()Lcom/nianticproject/ingress/common/w/b;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/af;->e:Lcom/nianticproject/ingress/common/w/b;

    return-object v0
.end method

.method protected final u()V
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/am;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/am;-><init>(Lcom/nianticproject/ingress/common/missions/af;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 340
    return-void
.end method
