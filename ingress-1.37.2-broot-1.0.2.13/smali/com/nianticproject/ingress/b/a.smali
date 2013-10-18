.class public final Lcom/nianticproject/ingress/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final a:Lcom/nianticproject/ingress/b/a;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/nianticproject/ingress/b/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/b/a;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/b/a;->a:Lcom/nianticproject/ingress/b/a;

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nianticproject/ingress/b/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/b/a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticproject/ingress/b/a;->a:Lcom/nianticproject/ingress/b/a;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/b/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
