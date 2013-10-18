.class public abstract Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/b;"
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field private final f:Landroid/content/Context;

.field private g:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/fl",
            "<TT;>.com/google/android/gms/internal/fn<*>;>;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/fp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fl",
            "<TT;>.com/google/android/gms/internal/fp;"
        }
    .end annotation
.end field

.field private final n:[Ljava/lang/String;

.field private final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/fl;->e:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->i:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->o:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fm;-><init>(Lcom/google/android/gms/internal/fl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gms/internal/fl;->n:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fl;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fl;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/fl;)Lcom/google/android/gms/internal/fp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/fl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/fl;)Lcom/google/android/gms/internal/fp;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    return-object v0
.end method

.method protected static j()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/fl;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fn;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v4, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/fr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fr;->b(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/common/a;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->k:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->c:Z

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/d;->a(Lcom/google/android/gms/common/a;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->k:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/c;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->i:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/d;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/fn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fl",
            "<TT;>.com/google/android/gms/internal/fn<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/fo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fy;",
            "Lcom/google/android/gms/internal/fl",
            "<TT;>.com/google/android/gms/internal/fo;)V"
        }
    .end annotation
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/fz;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fo;-><init>(Lcom/google/android/gms/internal/fl;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/fo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/c;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/d;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final c(Lcom/google/android/gms/common/c;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/d;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/fr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fr;->b(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/fp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fp;-><init>(Lcom/google/android/gms/internal/fl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/fr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->m:Lcom/google/android/gms/internal/fp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fr;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to connect to service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->n:[Ljava/lang/String;

    return-object v0
.end method

.method protected final i()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/fl;->i:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/gg;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fl;->i:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/gg;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/c;->a()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->i:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected final k()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/fl;->i:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/c;->b()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->i:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final m()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->g:Landroid/os/IInterface;

    return-object v0
.end method
