.class public final Lcom/nianticproject/ingress/common/missions/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/model/a/i;

.field private final b:Lcom/nianticproject/ingress/common/missions/ch;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bo;->a:Lcom/nianticproject/ingress/common/model/a/i;

    .line 19
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/bo;->b:Lcom/nianticproject/ingress/common/missions/ch;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/model/a/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bo;->a:Lcom/nianticproject/ingress/common/model/a/i;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/common/missions/ch;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bo;->b:Lcom/nianticproject/ingress/common/missions/ch;

    return-object v0
.end method
