.class public abstract Lcom/nianticproject/ingress/common/f/m;
.super Lcom/nianticproject/ingress/common/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/common/f/a",
        "<",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/f/n;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/f/n;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/f/m;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/nianticproject/ingress/common/f/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/f/a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/f/m;->c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected abstract c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation
.end method
