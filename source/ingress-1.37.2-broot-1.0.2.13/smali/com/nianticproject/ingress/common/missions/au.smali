.class final Lcom/nianticproject/ingress/common/missions/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/at;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/at;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/au;->a:Lcom/nianticproject/ingress/common/missions/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/au;->a:Lcom/nianticproject/ingress/common/missions/at;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/at;->a:Lcom/nianticproject/ingress/common/missions/as;

    const-string/jumbo v1, "ResonatorDeployed"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 187
    return-void
.end method
