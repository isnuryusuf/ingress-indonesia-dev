.class public abstract Lcom/nianticproject/ingress/common/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/aa;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Lcom/nianticproject/ingress/common/g/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/j;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/nianticproject/ingress/common/g/n;->a:Lcom/nianticproject/ingress/common/g/n;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/g/j;)Lcom/nianticproject/ingress/common/g/n;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/g/j;Lcom/nianticproject/ingress/common/g/n;)Lcom/nianticproject/ingress/common/g/n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/g/j;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/j;->g()V

    return-void
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nianticproject/ingress/common/g/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/nianticproject/ingress/common/g/k;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/g/k;-><init>(Lcom/nianticproject/ingress/common/g/j;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/k;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 149
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    sget-object v1, Lcom/nianticproject/ingress/common/g/n;->a:Lcom/nianticproject/ingress/common/g/n;

    if-eq v0, v1, :cond_0

    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/g/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 78
    sget-object v0, Lcom/nianticproject/ingress/common/g/n;->c:Lcom/nianticproject/ingress/common/g/n;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    .line 79
    monitor-exit p0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/g/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 83
    sget-object v0, Lcom/nianticproject/ingress/common/g/n;->c:Lcom/nianticproject/ingress/common/g/n;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/j;->b:Lcom/nianticproject/ingress/common/g/n;

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/j;->g()V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/g/j;->e()V

    .line 45
    return-void
.end method
