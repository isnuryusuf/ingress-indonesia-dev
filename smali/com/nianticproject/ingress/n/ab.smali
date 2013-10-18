.class public Lcom/nianticproject/ingress/n/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Lcom/nianticproject/ingress/n/ae;

.field private c:Ljava/lang/String;

.field private d:Lcom/nianticproject/ingress/shared/PregameStatus;

.field private e:Lcom/nianticproject/ingress/common/p;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/n/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/n/ab;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/n/ab;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/n/ab;->f:Ljava/util/Set;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/n/ab;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/ab;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->f:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/n/ae;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->b:Lcom/nianticproject/ingress/n/ae;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/p;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ab;->e:Lcom/nianticproject/ingress/common/p;

    .line 178
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/n/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    const-string/jumbo v0, "addOnStateChangedListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/n/ae;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ab;->b:Lcom/nianticproject/ingress/n/ae;

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->g:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/ingress/n/ac;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/n/ac;-><init>(Lcom/nianticproject/ingress/n/ab;Lcom/nianticproject/ingress/n/ae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/PregameStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ab;->d:Lcom/nianticproject/ingress/shared/PregameStatus;

    .line 162
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nianticproject/ingress/n/ab;->c:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/nianticproject/ingress/n/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    const-string/jumbo v0, "removeOnStateChangedListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public final c()Lcom/nianticproject/ingress/shared/PregameStatus;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->d:Lcom/nianticproject/ingress/shared/PregameStatus;

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/p;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/n/ab;->e:Lcom/nianticproject/ingress/common/p;

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/n/ab;->e:Lcom/nianticproject/ingress/common/p;

    .line 188
    return-object v0
.end method
