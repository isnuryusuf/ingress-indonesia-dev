.class public abstract Lcom/nianticproject/ingress/common/model/c;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/c;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/c;->a:Ljava/lang/String;

    return-object v0
.end method
