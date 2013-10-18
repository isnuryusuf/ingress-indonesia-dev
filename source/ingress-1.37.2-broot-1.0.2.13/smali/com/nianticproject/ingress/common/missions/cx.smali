.class final Lcom/nianticproject/ingress/common/missions/cx;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/cu;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/cu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/cx;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cx;->a:Lcom/nianticproject/ingress/common/missions/cu;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cx;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/cu;->c(Lcom/nianticproject/ingress/common/missions/cu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/cu;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 217
    return-void
.end method
