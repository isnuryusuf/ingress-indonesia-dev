.class public Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final addedGuids:Ljava/util/Set;
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/CheatAddInventoryResult;->addedGuids:Ljava/util/Set;

    .line 31
    return-void
.end method
