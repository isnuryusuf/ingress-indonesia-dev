.class public Lcom/nianticproject/ingress/common/c/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;
.implements Lcom/nianticproject/ingress/common/c/e;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/c/ai;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/c/aj;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/aj;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/ab;

    invoke-direct {v1, v0, p1}, Lcom/nianticproject/ingress/common/c/ab;-><init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/ba;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 128
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/bn;->k()V

    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/nianticproject/ingress/common/c/p;->a(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/bn;Z)V

    .line 41
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bn;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/nianticproject/ingress/common/c/bn;->a(FF)Lcom/nianticproject/ingress/common/c/bn;

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/x;

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/x;-><init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 108
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bs;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/c/aj;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 33
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/v;

    invoke-direct {v1, v0, p1, p2}, Lcom/nianticproject/ingress/common/c/v;-><init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 101
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 49
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 55
    if-gez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 57
    sget-object v0, Lcom/nianticproject/ingress/common/c/aj;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "unDuckAmbientSound: duckAmbientSoundLockCount < 0\n"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/u;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/c/u;-><init>(Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 155
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/ac;

    invoke-direct {v1, v0, p1}, Lcom/nianticproject/ingress/common/c/ac;-><init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/ba;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 133
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/y;

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/y;-><init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 113
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 76
    if-gez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 78
    sget-object v0, Lcom/nianticproject/ingress/common/c/aj;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "muteAmbientSound: muteAmbientSoundLockCount < 0\n"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/s;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/c/s;-><init>(Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 145
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/z;

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/z;-><init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 118
    return-void
.end method

.method public final d()Lcom/nianticproject/ingress/common/c/f;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    sget-object v0, Lcom/nianticproject/ingress/common/c/f;->a:Lcom/nianticproject/ingress/common/c/f;

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    sget-object v0, Lcom/nianticproject/ingress/common/c/f;->b:Lcom/nianticproject/ingress/common/c/f;

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/f;->c:Lcom/nianticproject/ingress/common/c/f;

    goto :goto_0
.end method

.method public final d(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/aa;

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/aa;-><init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 123
    return-void
.end method

.method public final e(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/r;

    invoke-direct {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/r;-><init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 138
    return-void
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/aj;->b:Lcom/nianticproject/ingress/common/c/ai;

    new-instance v1, Lcom/nianticproject/ingress/common/c/t;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/c/t;-><init>(Lcom/nianticproject/ingress/common/c/ai;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/ah;)V

    .line 150
    return-void
.end method
