.class final Lcom/nianticproject/ingress/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c;

.field final synthetic b:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;Lcom/nianticproject/ingress/common/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/nianticproject/ingress/l;->b:Lcom/nianticproject/ingress/AndroidComm;

    iput-object p2, p0, Lcom/nianticproject/ingress/l;->a:Lcom/nianticproject/ingress/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/nianticproject/ingress/l;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->i(Lcom/nianticproject/ingress/AndroidComm;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/l;->a:Lcom/nianticproject/ingress/common/c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method
