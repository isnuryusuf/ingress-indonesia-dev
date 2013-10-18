.class public Lcom/nianticproject/ingress/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/w/k;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/NemesisActivity;

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/o/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/o/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/o/c;->e:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/o/c;->b:Lcom/nianticproject/ingress/NemesisActivity;

    .line 33
    iput-boolean v1, p0, Lcom/nianticproject/ingress/o/c;->c:Z

    .line 34
    iput-boolean v1, p0, Lcom/nianticproject/ingress/o/c;->d:Z

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/o/c;)Lcom/nianticproject/ingress/NemesisActivity;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/o/c;->b:Lcom/nianticproject/ingress/NemesisActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/o/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/nianticproject/ingress/o/c;->c:Z

    return p1
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/o/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/o/c;->b:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v1, Lcom/nianticproject/ingress/o/d;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/o/d;-><init>(Lcom/nianticproject/ingress/o/c;Z)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/nianticproject/ingress/o/c;->c:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/o/c;->d:Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/o/c;->a(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/nianticproject/ingress/o/c;->d:Z

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/o/c;->a(Z)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/o/c;->d:Z

    .line 113
    return-void
.end method
