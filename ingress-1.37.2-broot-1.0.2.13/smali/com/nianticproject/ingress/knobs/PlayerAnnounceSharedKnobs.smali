.class public Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# instance fields
.field private final featureActivationDate:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;->featureActivationDate:J

    .line 33
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;->featureActivationDate:J

    return-wide v0
.end method
