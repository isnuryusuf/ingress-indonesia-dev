.class final Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fr;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ft;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fl",
            "<*>.com/google/android/gms/internal/fp;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Landroid/os/IBinder;

.field private h:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fr;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->a:Lcom/google/android/gms/internal/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ft;-><init>(Lcom/google/android/gms/internal/fs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ft;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/fs;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/fs;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->h:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->g:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/ft;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/fp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fl",
            "<*>.com/google/android/gms/internal/fp;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fs;->f:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/fp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fl",
            "<*>.com/google/android/gms/internal/fp;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fs;->f:Z

    return v0
.end method

.method public final c(Lcom/google/android/gms/internal/fp;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fl",
            "<*>.com/google/android/gms/internal/fp;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fs;->e:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->g:Landroid/os/IBinder;

    return-object v0
.end method

.method public final g()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->h:Landroid/content/ComponentName;

    return-object v0
.end method
