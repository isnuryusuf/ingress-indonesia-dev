.class public final Lcom/nianticproject/ingress/common/q/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/b/q;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/q/b/q;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "http://mobilemaps.clients.google.com/glm/mmap"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->b:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "SYSTEM"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->c:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "en"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->d:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->e:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "DriveAbout"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->f:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->g:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->h:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->i:Z

    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/p;->a:Lcom/nianticproject/ingress/common/q/b/q;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/q/b/p;)Lcom/nianticproject/ingress/common/q/b/q;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->a:Lcom/nianticproject/ingress/common/q/b/q;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/q/b/p;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/p;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/q/b/o;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/nianticproject/ingress/common/q/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/q/b/o;-><init>(Lcom/nianticproject/ingress/common/q/b/p;B)V

    return-object v0
.end method
