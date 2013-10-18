.class public abstract Lcom/nianticproject/ingress/service/core/CoreService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/service/core/h;


# static fields
.field private static d:Ljava/lang/Integer;


# instance fields
.field protected a:Lcom/nianticproject/ingress/common/w/aa;

.field protected b:Landroid/os/Handler;

.field private c:Lcom/nianticproject/ingress/service/core/c;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/service/core/CoreService;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/nianticproject/ingress/service/core/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/service/core/a;-><init>(Lcom/nianticproject/ingress/service/core/CoreService;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->f:Ljava/lang/Runnable;

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-static {}, Lcom/nianticproject/ingress/service/core/CoreService;->b()I

    move-result v0

    .line 197
    const-string/jumbo v1, "CoreService.request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/service/core/CoreService;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/service/core/CoreService;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    const-string/jumbo v1, "CoreService.request_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "There are now "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pending Intents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/CoreService;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/CoreService;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static b()I
    .locals 3

    .prologue
    .line 181
    sget-object v1, Lcom/nianticproject/ingress/service/core/CoreService;->d:Ljava/lang/Integer;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/service/core/CoreService;->d:Ljava/lang/Integer;

    sget-object v2, Lcom/nianticproject/ingress/service/core/CoreService;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/nianticproject/ingress/service/core/CoreService;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract c(Landroid/content/Intent;)V
.end method

.method protected final h(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/ingress/service/core/b;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/service/core/b;-><init>(Lcom/nianticproject/ingress/service/core/CoreService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method protected final i(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/service/core/c;->b(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 212
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/service/core/CoreService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->b:Landroid/os/Handler;

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/nianticproject/ingress/service/core/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/CoreService;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/service/core/c;-><init>(Lcom/nianticproject/ingress/service/core/h;Landroid/os/Handler;Lcom/nianticproject/ingress/common/w/aa;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/service/core/c;->a()V

    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 226
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/service/core/c;->b()V

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 237
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    :try_start_0
    const-string/jumbo v0, "CoreService.onStartCommand"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStartCommand(Intent, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    const-string/jumbo v1, "CoreService.request_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Intent added to pending intents pool. There are now "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/CoreService;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pending Intents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/CoreService;->c:Lcom/nianticproject/ingress/service/core/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/service/core/c;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x2

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
