.class final Lcom/nianticproject/ingress/common/missions/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cm;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bq;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bq;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bq;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/missions/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/bo;->b()Lcom/nianticproject/ingress/common/missions/ch;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/missions/ci;->a:Lcom/nianticproject/ingress/common/missions/ci;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/ch;->a(Lcom/nianticproject/ingress/common/missions/ci;)V

    .line 124
    :cond_0
    return-void
.end method
