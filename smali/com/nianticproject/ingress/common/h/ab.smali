.class public final Lcom/nianticproject/ingress/common/h/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/r;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/r;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/r;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/ab;->a:Lcom/nianticproject/ingress/common/r;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ab;->a:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "RefreshLocationSystemTask"

    return-object v0
.end method
