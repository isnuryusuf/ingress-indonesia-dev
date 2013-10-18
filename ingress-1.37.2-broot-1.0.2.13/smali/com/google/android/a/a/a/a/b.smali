.class public final Lcom/google/android/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/a/a/a/a/f;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "Android %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->a:Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->b:Ljava/lang/String;

    .line 27
    iput v5, p0, Lcom/google/android/a/a/a/a/b;->c:I

    .line 28
    const-string/jumbo v0, "_s"

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->d:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "http://csi.gstatic.com/csi"

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->e:Ljava/lang/String;

    .line 30
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/a/a/a/a/b;->f:I

    .line 31
    iput v5, p0, Lcom/google/android/a/a/a/a/b;->g:I

    .line 32
    iput v4, p0, Lcom/google/android/a/a/a/a/b;->h:I

    .line 33
    iput v4, p0, Lcom/google/android/a/a/a/a/b;->i:I

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/a/a/a/a/b;->c:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/a/a/a/a/b;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/a/a/a/a/b;->d:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/a/a/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/a/a/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/a/a/a/a/b;->f:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/a/a/a/a/b;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/a/a/a/a/b;->h:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/android/a/a/a/a/b;->i:I

    return v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/a/a/a/a/b;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final i()Lcom/google/android/a/a/a/a/f;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/a/a/a/a/b;->k:Lcom/google/android/a/a/a/a/f;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/google/android/a/a/a/a/h;

    iget-object v1, p0, Lcom/google/android/a/a/a/a/b;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/a/a/a/a/b;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/a/a/a/a/b;->k:Lcom/google/android/a/a/a/a/f;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/a/a/b;->k:Lcom/google/android/a/a/a/a/f;

    return-object v0
.end method
