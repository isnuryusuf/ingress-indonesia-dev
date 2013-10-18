.class public Lcom/nianticproject/ingress/shared/rpc/LinkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final newLinkGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final newRegionGuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newLinkGuid:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newRegionGuids:Ljava/util/Set;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newLinkGuid:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/LinkResult;->newRegionGuids:Ljava/util/Set;

    .line 36
    return-void
.end method
