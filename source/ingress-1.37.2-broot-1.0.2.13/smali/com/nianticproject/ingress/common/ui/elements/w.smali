.class final Lcom/nianticproject/ingress/common/ui/elements/w;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog;Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/w;->a:Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/w;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 48
    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/w;->b:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/w;->a:Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/MissionReminderDialog;->g()V

    .line 54
    return-void
.end method
