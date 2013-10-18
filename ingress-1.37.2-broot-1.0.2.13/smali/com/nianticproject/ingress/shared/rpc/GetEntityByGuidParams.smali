.class public Lcom/nianticproject/ingress/shared/rpc/GetEntityByGuidParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final entityGuids:Ljava/util/Set;
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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GetEntityByGuidParams;->entityGuids:Ljava/util/Set;

    .line 36
    return-void
.end method
