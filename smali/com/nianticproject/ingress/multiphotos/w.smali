.class final Lcom/nianticproject/ingress/multiphotos/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/a",
        "<",
        "Lcom/nianticproject/ingress/multiphotos/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/w;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 654
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/d;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/multiphotos/d;-><init>(J)V

    return-object v0
.end method
