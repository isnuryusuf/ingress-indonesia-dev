.class final Lcom/nianticproject/ingress/l/q;
.super Lcom/nianticproject/ingress/l/b;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/nianticproject/ingress/l/f;

.field private final c:Lcom/nianticproject/ingress/l/t;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;Lcom/nianticproject/ingress/l/t;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nianticproject/ingress/l/q;->b:Lcom/nianticproject/ingress/l/f;

    .line 197
    invoke-direct {p0, p3}, Lcom/nianticproject/ingress/l/b;-><init>(Landroid/os/Looper;)V

    .line 198
    iput-object p2, p0, Lcom/nianticproject/ingress/l/q;->c:Lcom/nianticproject/ingress/l/t;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/l/q;)Lcom/nianticproject/ingress/l/t;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/l/q;->c:Lcom/nianticproject/ingress/l/t;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/l/q;->a:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/ingress/l/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticproject/ingress/l/r;-><init>(Lcom/nianticproject/ingress/l/q;Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method
